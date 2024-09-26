#!/usr/bin/env bash
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

mvnBuildDocker() {
  local mvnCommand mvnImage baseImageAlreadyHasJavaAndMaven crlfDocker mvnVersion mvn_engine_params
  mvnCommand="$1"
  crlfDocker="no"
  mvn_engine_params="$([ "$CI" = true ] && echo "--no-transfer-progress -Dstyle.color=always")"

  mvnVersion="3.6.3"
  case ${tool} in
    mvn-*)
      mvnVersion="$(echo "$tool" | cut -d - -f 2-)"
      ;;
  esac

  case ${jdk} in
    # Supported openjdk-*-jdk on ubuntu 22.04 (checked on 2024-09-14)
    8 | 11 | 17 | 18 | 19 | 21)
      mvnImage=docker.io/library/ubuntu:22.04
      baseImageAlreadyHasJavaAndMaven=false
      [ -z "${toolchains}" ] && toolchains=${jdk}
      # will use/create custom "toolchains" rebuilder image
      ;;
    # for other JDK, select "official" Maven Docker image to match required JDK version: https://hub.docker.com/_/maven
    6 )
      # This is the latest image available
      mvnVersion="3.2.5"
      mvnImage=docker.io/library/maven:3.2.5-jdk-6b32
      baseImageAlreadyHasJavaAndMaven=true
      crlfDocker="yes"
      ;;
    7)
      # This is the latest image available
      mvnVersion="3.6.1"
      mvnImage=docker.io/library/maven:3.6.1-jdk-7-alpine
      baseImageAlreadyHasJavaAndMaven=true
      crlfDocker="yes"
      ;;
    9)
      # This is the latest image available
      mvnVersion="3.5.4"
      mvnImage=docker.io/library/maven:3.5.4-jdk-9-slim
      baseImageAlreadyHasJavaAndMaven=true
      ;;
    14 | 15 | 16 )
      mvnImage=docker.io/library/maven:${mvnVersion}-openjdk-${jdk}-slim
      baseImageAlreadyHasJavaAndMaven=true
      ;;
    22 | 23 | 24 )
      # For this non-LTS version we use the Ubuntu 22.04 base image that already has this JDK built in.
      # Only a single non-LTS per build is supported.
      mvnImage=docker.io/library/maven:${mvnVersion}-eclipse-temurin-${jdk}-jammy
      baseImageAlreadyHasJavaAndMaven=true
      ;;
    *)
      mvnImage=docker.io/library/maven:${mvnVersion}-jdk-${jdk}
  esac

  # Second configure it for the local user
  case "$(uname -s)" in
    Linux|Darwin)
      USER_NAME=${SUDO_USER:=${USER}}
      USER_ID=$(id -u "${USER_NAME}")
      GROUP_ID=$(id -g "${USER_NAME}")
      ;;
    *)
      USER_NAME=${USER}
      USER_ID=1000
      GROUP_ID=50
  esac

  local DOCKERFILES_TEMPLATES_DIR="${SCRIPTDIR}/bin/docker"
  local DOCKERFILES_TMP_DIR="${DOCKERFILES_TEMPLATES_DIR}/tmp"
  mkdir -p "${DOCKERFILES_TMP_DIR}"
  if [ ! -z "${toolchains}" ];
  then
    info "Preparing custom Reproducible Builder image rb-ubuntu-2204-jdk${jdk}-mvn${mvnVersion}-toolchains*"
    mvnBuildDockerBuildBaseToolchainsImage
    if [ "${baseImageAlreadyHasJavaAndMaven}" == "false" ];
    then
      echo
      mvnBuildDockerAddMaven
    fi
    echo
    mvnBuildDockerAddUserLayer
    echo
    mvnBuildDockerAddEnvironmentLayer
  else
    # ############### OTHER IMAGES IMAGE ###############
    info "Preparing Reproducible Builder from public Maven Docker image ${mvnImage}"
    mvnBuildDockerAddUserLayer
  fi

  # ############# IMAGE READY FOR USE #################

  echo
  info "Rebuilder container image is ready for use: \033[1m${mvnImage}\033[0m"
  info "Rebuilding \033[1m${groupId}:${artifactId}:${version}\033[0m release"

  [ -d $base/.bnd ] || mkdir -p $base/.bnd
  [ -d $base/.m2 ]  || mkdir -p $base/.m2
  [ -d $base/.npm ] || mkdir -p $base/.npm
  [ -d $base/.sbt ] || mkdir -p $base/.sbt

  local engine_command="$RB_OCI_ENGINE run $([ "$CI" != true ] && echo "-it ")--rm --name rebuild-central\
    ${RB_OCI_ENGINE_RUN_OPTS}\
    -v $PWD:/var/maven/app${RB_OCI_VOLUME_FLAGS}\
    -v $base/m2:/var/maven/.m2${RB_OCI_VOLUME_FLAGS}\
    -v $base/.sbt:/var/maven/.sbt${RB_OCI_VOLUME_FLAGS}\
    -v $base/.npm:/.npm${RB_OCI_VOLUME_FLAGS}\
    -v $base/.bnd:/.bnd${RB_OCI_VOLUME_FLAGS}\
    -u $USER_ID:$GROUP_ID\
    -e MAVEN_CONFIG=/var/maven/.m2\
    -e MVN_UMASK=${MVN_UMASK}\
    -w /var/maven/app"

  if [[ "${newline}" == crlf* ]]
  then
    if [[ "${crlfDocker}" == "yes" ]]
    then
      runcommand ${engine_command} ${mvnImage} ${mvnCommand} ${mvn_engine_params} -Dline.separator=$'\r\n'
    else
      mvnCommand="$(echo "${mvnCommand}" | sed "s_^mvn _/var/maven/.m2/mvncrlf _")"
      runcommand ${engine_command} ${mvnImage} ${mvnCommand} ${mvn_engine_params}
    fi
  else
    runcommand ${engine_command} ${mvnImage} ${mvnCommand} ${mvn_engine_params}
  fi
}

# ############### TOOLCHAINS BASE IMAGE ###############
mvnBuildDockerBuildBaseToolchainsImage() {
    # ############### BASED ON THE UBUNTU 22.04 IMAGE ###################
    IFS='|' read -r -a toolchainsjdks <<< "${toolchains}"

    local baseMvnImage=${mvnImage}
    local JDKPACKAGES=""
    local JDKTAG="jdk${jdk}-mvn${mvnVersion}-toolchains"
    for toolchainsjdk in "${toolchainsjdks[@]}";
    do
      # For most JDK versions we can simply install the package
      # For the non-LTS versions we must switch to the base image they need
      # Only a single non-LTS per build is supported.
      case ${toolchainsjdk} in
        # Supported openjdk-*-jdk on ubuntu 22.04 (checked on 2024-09-14)
        8 | 11 | 17 | 18 | 19 | 21 )
          JDKPACKAGES="${JDKPACKAGES} openjdk-${toolchainsjdk}-jdk "
          JDKTAG="${JDKTAG}-${toolchainsjdk}"
          ;;
        22 | 23 | 24 )
          # This non-LTS version we use the Ubuntu 22.04 base image that already has this JDK built in.
          baseMvnImage=docker.io/library/maven:${mvnVersion}-eclipse-temurin-${toolchainsjdk}-jammy
          baseImageAlreadyHasJavaAndMaven=true
          JDKTAG="${JDKTAG}-${toolchainsjdk}"
          ;;
        *)
          fail "The requested JDK ${toolchainsjdk} cannot be used in a toolchain config."
      esac
    done

    mvnImage="rb-ubuntu-2204-${JDKTAG}"
    local DOCKERFILE="Dockerfile-${mvnImage}"
    (
      cat "${DOCKERFILES_TEMPLATES_DIR}/Dockerfile.toolchains.template" | \
        sed "s_@@BASEIMAGE@@_${baseMvnImage}_g" | \
        sed "s/@@JDKPACKAGES@@/${JDKPACKAGES}/g" | \
        sed "s/@@MAVEN_VERSION@@/${mvnVersion}/g" | \
        sed "s/@@MAVEN_MAJOR@@/$(echo "${mvnVersion}" | cut -c 1)/g" | \
        sed "s/@@JDK@@/${jdk}/g"
    ) > "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}"

    if [ "${baseImageAlreadyHasJavaAndMaven}" == "true" ];
    then
      sed -i "/###ADDITIONAL-JAVA-FIXES###/r ${DOCKERFILES_TEMPLATES_DIR}/Dockerfile.fix-preinstalled-java.include" \
        "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}"
    fi

    info "Building base Reproducible Builder toolchains image \033[1m${mvnImage}\033[0m"
    if ! runcommand "${RB_OCI_ENGINE}" build ${RB_OCI_ENGINE_BUILD_OPTS} -t "${mvnImage}" -f "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}" "${SCRIPTDIR}/bin" ;
    then
      fatal "Unable to build ${mvnImage} using ${DOCKERFILE}"
    fi
}

# ################## INSTALL MAVEN ######################
mvnBuildDockerAddMaven() {
  # Using the provided base image we are adding a layer to install Maven
  info "Adding layer to rebuilder container image for installation of maven"

  local baseMvnImage="${mvnImage}"

  mvnImage="$(basename ${mvnImage})-maven"
  local DOCKERFILE="Dockerfile-${mvnImage}"
  (
    cat "${DOCKERFILES_TEMPLATES_DIR}/Dockerfile.maven.template" | \
      sed "s_@@BASEIMAGE@@_${baseMvnImage}_g" | \
      sed "s/@@MAVEN_VERSION@@/${mvnVersion}/g" | \
      sed "s/@@MAVEN_MAJOR@@/$(echo "${mvnVersion}" | cut -c 1)/g"
  ) > "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}"

  if ! runcommand "${RB_OCI_ENGINE}" build ${RB_OCI_ENGINE_BUILD_OPTS} -t "${mvnImage}" -f "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}" "${SCRIPTDIR}/bin" ;
  then
    fatal "Unable to build ${mvnImage} using ${DOCKERFILE}"
  fi
}

# ################## LOCAL USER ######################
mvnBuildDockerAddUserLayer() {
  # Using the provided base image we are adding a layer to set the user information
  info "Adding layer to rebuilder container image for local user"

  local baseMvnImage="${mvnImage}"

  mvnImage="$(basename ${mvnImage})-${USER_NAME}"
  local DOCKERFILE="Dockerfile-${mvnImage}"
  (
    cat "${DOCKERFILES_TEMPLATES_DIR}/Dockerfile.localuser.template" | \
      sed "s_@@BASEIMAGE@@_${baseMvnImage}_g" | \
      sed "s/@@USER_NAME@@/${USER_NAME}/g" | \
      sed "s/@@USER_ID@@/${USER_ID}/g" | \
      sed "s/@@GROUP_ID@@/${GROUP_ID}/g"
   ) > "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}"

  if [ ! -z "${toolchains}" ];
  then
    # In case of toolchains we enable the generator to do so.
    sed -i.bak 's/##TOOLCHAINS##//' "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}"
  fi

  if ! runcommand "${RB_OCI_ENGINE}" build ${RB_OCI_ENGINE_BUILD_OPTS} -t "${mvnImage}" -f "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}" "${SCRIPTDIR}/bin" ;
  then
    fatal "Unable to build ${mvnImage} using ${DOCKERFILE}"
  fi
}

# ################## BUILD ENVIRONMENT CHOICES ######################
mvnBuildDockerAddEnvironmentLayer() {
  # Using the provided user image we are adding a layer to set the environment (umask, timezone, ...)
  info "Adding layer to rebuilder container image for environment settings (umask, timezone, ...)"

  local baseMvnImage="${mvnImage}"

  local ENVTAG="$(echo "${timezone}-${locale}-${umask}" | tr '[:upper:]' '[:lower:]' | tr '/' '_' | tr '+' '_' )"
  mvnImage="${mvnImage}-${ENVTAG}"
  local DOCKERFILE="Dockerfile-${mvnImage}"
  (
    cat "${DOCKERFILES_TEMPLATES_DIR}/Dockerfile.environment.template" | \
      sed "s/@@BASEIMAGE@@/${baseMvnImage}/g" | \
      sed "s/@@BUILD_LOCALE@@/${locale}/g" | \
      sed "s/@@BUILD_UMASK@@/${umask}/g" | \
      sed "s/@@MAVEN_OPTS@@/${MAVEN_OPTS}/g" | \
      sed "s@\@\@BUILD_TIMEZONE\@\@@${timezone}@g"
   ) > "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}"

  if ! runcommand "${RB_OCI_ENGINE}" build ${RB_OCI_ENGINE_BUILD_OPTS} -t "${mvnImage}" -f "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}" "${SCRIPTDIR}/bin" ;
  then
    fatal "Unable to build ${mvnImage} using ${DOCKERFILE}"
  fi
}
