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
      mvnVersion="$(echo "$tool" | cut -d - -f 2)"
      ;;
  esac

  # select Docker image to match required JDK version: https://hub.docker.com/_/maven
  case ${jdk} in
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
    # Supported openjdk-*-jdk on ubuntu 22.04 (checked on 2023-03-05)
    8 | 11 | 17 | 18 | 19 )
      [ -z "${toolchains}" ] && toolchains=${jdk}
      # mvnImage=maven:${mvnVersion}-openjdk-${jdk}-slim
      ;;
    *)
      mvnImage=maven:${mvnVersion}-eclipse-temurin-${jdk}-alpine
  esac

  # Second configure it for the local user
  if [ "$(uname -s)" == "Linux" ]; then
    USER_NAME=${SUDO_USER:=${USER}}
    USER_ID=$(id -u "${USER_NAME}")
    GROUP_ID=$(id -g "${USER_NAME}")
  else # boot2docker uid and gid
    USER_NAME=${USER}
    USER_ID=1000
    GROUP_ID=50
  fi

  mkdir -p "${SCRIPTDIR}/.docker"
  if [ ! -z "${toolchains}" ];
  then
    mvnBuildDockerBuildBaseImage
    mvnBuildDockerAddUserLayer
    mvnBuildDockerAddEnvironmentLayer
  else
    # ############### OTHER IMAGES IMAGE ###############
    info "Downloading docker image ${mvnImage}"
    mvnBuildDockerAddUserLayer
#    local mvn_docker_params="-Duser.home=/var/maven"
  fi

  # ############# IMAGE READY FOR USE #################

  info "Rebuilding using Docker image ${mvnImage}"
  local docker_command="docker run -it --rm --name rebuild-central"
  docker_command="${docker_command} -v $PWD:/var/maven/app"
  docker_command="${docker_command} -v $base/m2/settings.xml:/var/maven/.m2/settings.xml"
  # For the mvncrlf to work
  docker_command="${docker_command} -v $base/bin:/var/maven/.m2/bin"
  docker_command="${docker_command} -v $base/m2/repository:/var/maven/.m2/repository"
  docker_command="${docker_command} -v $base/.sbt:/var/maven/.sbt"
  docker_command="${docker_command} -v $base/.npm:/.npm"
  docker_command="${docker_command} -v $base/.bnd:/.bnd"
  docker_command="${docker_command} -u ${USER_NAME}"
  docker_command="${docker_command} -e MAVEN_CONFIG=/var/maven/.m2"
  docker_command="${docker_command} -w /var/maven/app"

  if [[ "${newline}" == crlf* ]]
  then
    if [[ "${crlfDocker}" == "yes" ]]
    then
      runcommand ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params} -Dline.separator=$'\r\n'
    else
      mvnCommand="$(echo "${mvnCommand}" | sed "s_^mvn _/var/maven/.m2/bin/mvncrlf _")"
      runcommand ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params}
    fi
  else
    runcommand ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params}
  fi
}

# ################## THE UBUNTU 22.04 BASE IMAGE ######################
mvnBuildDockerBuildBaseImage() {
    # ############### TOOLCHAINS IMAGE ###############
    IFS='|' read -r -a toolchainsjdks <<< "${toolchains}"

    local JDKPACKAGES=""
    local JDKTAG="jdk${jdk}-mvn${mvnVersion}-toolchains"
    for toolchainsjdk in "${toolchainsjdks[@]}";
    do
      JDKPACKAGES="${JDKPACKAGES} openjdk-${toolchainsjdk}-jdk "
      JDKTAG="${JDKTAG}-${toolchainsjdk}"
    done
    DOCKERFILE="${SCRIPTDIR}/.docker/Dockerfile-rb-ubuntu-2204-${JDKTAG}"
    (
      cat "${SCRIPTDIR}/bin/docker/Dockerfile.template" | \
        sed "s/@@JDKPACKAGES@@/${JDKPACKAGES}/g" | \
        sed "s/@@MAVEN_VERSION@@/${mvnVersion}/g" | \
        sed "s/@@JDK@@/${jdk}/g"
    ) > "${DOCKERFILE}"
    mvnImage="rb-ubuntu-2204-${JDKTAG}"
    runlog "Building base docker image ${mvnImage} using ${DOCKERFILE}"
    if ! docker build -t "${mvnImage}" -f "${DOCKERFILE}" "${SCRIPTDIR}/bin" ;
    then
      fatal "Unable to build ${mvnImage} using ${DOCKERFILE}"
    fi
}

# ################## LOCAL USER ######################
mvnBuildDockerAddUserLayer() {
  # Using the provided base image we are adding a layer to set the user information
  info "Adding layer to docker image for local user"

  local USERDOCKERFILE="${SCRIPTDIR}/.docker/Dockerfile-${mvnImage}-${USER_NAME}"
  cat "${SCRIPTDIR}/bin/docker/Dockerfile.localuser.template" | \
      sed "s/@@BASEIMAGE@@/${mvnImage}/g" | \
      sed "s/@@USER_NAME@@/${USER_NAME}/g" | \
      sed "s/@@USER_ID@@/${USER_ID}/g" | \
      sed "s/@@GROUP_ID@@/${GROUP_ID}/g" > "${USERDOCKERFILE}"

  if [ ! -z "${toolchains}" ];
  then
    # In case of toolchains we enable the generator to do so.
    sed 's/##TOOLCHAINS##//' -i "${USERDOCKERFILE}"
  fi

  mvnImage="${mvnImage}-${USER_NAME}"
  runlog "Building base docker image ${mvnImage} using ${USERDOCKERFILE}"
  if ! docker build -t "${mvnImage}" -f "${USERDOCKERFILE}" "${SCRIPTDIR}/bin" ;
  then
    fatal "Unable to build ${mvnImage} using ${USERDOCKERFILE}"
  fi
}

# ################## BUILD ENVIRONMENT CHOICES ######################
mvnBuildDockerAddEnvironmentLayer() {
  # Using the provided user image we are adding a layer to set the environment (umask, timezone, ...)
  info "Adding layer to docker image for environment settings"
  ENVTAG=$(echo "${timezone}-${locale}-${umask}" | sed 's/^\(.*\)$/\L\1\E/g;s/[^a-z0-9-]/-/g;s/--/-/g' )
  local ENVDOCKERFILE="${SCRIPTDIR}/.docker/Dockerfile-${mvnImage}-${ENVTAG}"
  cat "${SCRIPTDIR}/bin/docker/Dockerfile.environment.template" | \
      sed "s/@@BASEIMAGE@@/${mvnImage}/g" | \
      sed "s/@@BUILD_LOCALE@@/${locale}/g" | \
      sed "s/@@BUILD_UMASK@@/${umask}/g" | \
      sed "s/@@MAVEN_OPTS@@/${MAVEN_OPTS}/g" | \
      sed "s@\@\@BUILD_TIMEZONE\@\@@${timezone}@g" > "${ENVDOCKERFILE}"
  mvnImage="${mvnImage}-${ENVTAG}"
  runlog "Building base docker image ${mvnImage} using ${ENVDOCKERFILE}"
  if ! docker build -t "${mvnImage}" -f "${ENVDOCKERFILE}" "${SCRIPTDIR}/bin" ;
  then
    fatal "Unable to build ${mvnImage} using ${ENVDOCKERFILE}"
  fi

  info "Toolchains docker image is ready for use."
}
