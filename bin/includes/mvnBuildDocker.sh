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
  local mvnCommand mvnImage crlfDocker mvnVersion mvn_docker_params
  mvnCommand="$1"
  crlfDocker="no"
  mvn_docker_params=""

  mvnVersion="3.6.3"
  case ${tool} in
    mvn-*)
      mvnVersion="$(echo "$tool" | cut -d - -f 2-)"
      ;;
  esac

  case ${jdk} in
    # Supported openjdk-*-jdk on ubuntu 22.04 (checked on 2023-03-05)
    8 | 11 | 17 | 18 | 19 )
      [ -z "${toolchains}" ] && toolchains=${jdk}
      # will use/create custom "toolchains" rebuilder image
      ;;
    # for other JDK, select "official" Maven Docker image to match required JDK version: https://hub.docker.com/_/maven
    6 )
      # This is the latest image available
      mvnVersion="3.2.5"
      mvnImage=maven:3.2.5-jdk-6b32
      crlfDocker="yes"
      ;;
    7)
      # This is the latest image available
      mvnVersion="3.6.1"
      mvnImage=maven:3.6.1-jdk-7-alpine
      crlfDocker="yes"
      ;;
    9)
      # This is the latest image available
      mvnVersion="3.5.4"
      mvnImage=maven:3.5.4-jdk-9-slim
      ;;
    14 | 15 | 16 )
      mvnImage=maven:${mvnVersion}-openjdk-${jdk}-slim
      ;;
    *)
      mvnImage=maven:${mvnVersion}-jdk-${jdk}
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
  info "Rebuilder Docker image is ready for use: \033[1m${mvnImage}\033[0m"
  info "Rebuilding \033[1m${groupId}:${artifactId}:${version}\033[0m release"
  local docker_command="docker run -it --rm --name rebuild-central\
    -v $PWD:/var/maven/app\
    -v $base/m2:/var/maven/.m2\
    -v $base/.sbt:/var/maven/.sbt\
    -v $base/.npm:/.npm\
    -v $base/.bnd:/.bnd\
    -u $USER_NAME:$GROUP_ID\
    -e MAVEN_CONFIG=/var/maven/.m2\
    -e MVN_UMASK=${MVN_UMASK}\
    -w /var/maven/app"

  if [[ "${newline}" == crlf* ]]
  then
    if [[ "${crlfDocker}" == "yes" ]]
    then
      runcommand ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params} -Dline.separator=$'\r\n'
    else
      mvnCommand="$(echo "${mvnCommand}" | sed "s_^mvn _/var/maven/.m2/mvncrlf _")"
      runcommand ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params}
    fi
  else
    runcommand ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params}
  fi
}

# ############### TOOLCHAINS BASE IMAGE ###############
mvnBuildDockerBuildBaseToolchainsImage() {
    # ############### BASED ON THE UBUNTU 22.04 IMAGE ###################
    IFS='|' read -r -a toolchainsjdks <<< "${toolchains}"

    local JDKPACKAGES=""
    local JDKTAG="jdk${jdk}-mvn${mvnVersion}-toolchains"
    for toolchainsjdk in "${toolchainsjdks[@]}";
    do
      JDKPACKAGES="${JDKPACKAGES} openjdk-${toolchainsjdk}-jdk "
      JDKTAG="${JDKTAG}-${toolchainsjdk}"
    done

    mvnImage="rb-ubuntu-2204-${JDKTAG}"
    local DOCKERFILE="Dockerfile-${mvnImage}"
    (
      cat "${DOCKERFILES_TEMPLATES_DIR}/Dockerfile.toolchains.template" | \
        sed "s/@@JDKPACKAGES@@/${JDKPACKAGES}/g" | \
        sed "s/@@MAVEN_VERSION@@/${mvnVersion}/g" | \
        sed "s/@@MAVEN_MAJOR@@/$(echo "${mvnVersion}" | cut -c 1)/g" | \
        sed "s/@@JDK@@/${jdk}/g"
    ) > "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}"

    info "Building base Reproducible Builder toolchains image \033[1m${mvnImage}\033[0m"
    if ! runcommand docker build -t "${mvnImage}" -f "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}" "${SCRIPTDIR}/bin" ;
    then
      fatal "Unable to build ${mvnImage} using ${DOCKERFILE}"
    fi
}

# ################## LOCAL USER ######################
mvnBuildDockerAddUserLayer() {
  # Using the provided base image we are adding a layer to set the user information
  info "Adding layer to rebuilder Docker image for local user"

  local baseMvnImage="${mvnImage}"

  mvnImage="${mvnImage}-${USER_NAME}"
  local DOCKERFILE="Dockerfile-${mvnImage}"
  (
    cat "${DOCKERFILES_TEMPLATES_DIR}/Dockerfile.localuser.template" | \
      sed "s/@@BASEIMAGE@@/${baseMvnImage}/g" | \
      sed "s/@@USER_NAME@@/${USER_NAME}/g" | \
      sed "s/@@USER_ID@@/${USER_ID}/g" | \
      sed "s/@@GROUP_ID@@/${GROUP_ID}/g"
   ) > "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}"

  if [ ! -z "${toolchains}" ];
  then
    # In case of toolchains we enable the generator to do so.
    sed -i.bak 's/##TOOLCHAINS##//' "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}"
  fi

  if ! runcommand docker build -t "${mvnImage}" -f "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}" "${SCRIPTDIR}/bin" ;
  then
    fatal "Unable to build ${mvnImage} using ${DOCKERFILE}"
  fi
}

# ################## BUILD ENVIRONMENT CHOICES ######################
mvnBuildDockerAddEnvironmentLayer() {
  # Using the provided user image we are adding a layer to set the environment (umask, timezone, ...)
  info "Adding layer to rebuilder Docker image for environment settings (umask, timezone, ...)"

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

  if ! runcommand docker build -t "${mvnImage}" -f "${DOCKERFILES_TMP_DIR}/${DOCKERFILE}" "${SCRIPTDIR}/bin" ;
  then
    fatal "Unable to build ${mvnImage} using ${DOCKERFILE}"
  fi
}
