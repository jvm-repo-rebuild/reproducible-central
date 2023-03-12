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
  local mvnCommand mvnImage crlfDocker mvnVersion
  mvnCommand="$1"
  crlfDocker="no"

  mvnVersion="3.6.3"
  case ${jdk} in
    18)
      mvnVersion="3"
  esac
  case ${tool} in
    mvn-*)
      mvnVersion="$(echo "$tool" | cut -d - -f 2)"
  esac

  # select Docker image to match required JDK version: https://hub.docker.com/_/maven
  case ${jdk} in
    6 | 7)
      mvnImage=maven:3.6.1-jdk-${jdk}-alpine
      crlfDocker="yes"
      ;;
    8)
      mvnImage=maven:${mvnVersion}-jdk-${jdk}-slim
      ;;
    9)
      mvnImage=maven:3-jdk-${jdk}-slim
      ;;
    14)
      mvnImage=maven:${mvnVersion}-jdk-${jdk}
      ;;
    11 | 15 | 16 | 17)
      mvnImage=maven:${mvnVersion}-openjdk-${jdk}-slim
      ;;
    *)
      mvnImage=maven:${mvnVersion}-eclipse-temurin-${jdk}-alpine
  esac
  if ! docker pull -q ${mvnImage} > /dev/null 2>&1
  then
    for image in maven:{${mvnVersion},3}-eclipse-temurin-${jdk}-alpine
    do
      if docker pull -q ${image} > /dev/null 2>&1
      then
        mvnImage=${image}
        break
      fi
    done
  fi

  echo "Rebuilding using Docker image ${mvnImage}"
  local docker_command="docker run -it --rm --name rebuild-central -v $PWD:/var/maven/app -v $base:/var/maven/.m2 -v $base/.sbt:/var/maven/.sbt -v $base/.npm:/.npm -v $base/.bnd:/.bnd -u $(id -u ${USER}):$(id -g ${USER}) -e MAVEN_CONFIG=/var/maven/.m2 -w /var/maven/app"
  local mvn_docker_params="-Duser.home=/var/maven"
  if [[ "${newline}" == crlf* ]]
  then
    if [[ "${crlfDocker}" == "yes" ]]
    then
      echo -e "\033[2m${docker_command} ${mvnImage} \033[1m${mvnCommand} ${mvn_docker_params} -Dline.separator=\$'\\\\r\\\\n'\033[0m"
      ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params} -Dline.separator=$'\r\n'
    else
      mvnCommand="$(echo "${mvnCommand}" | sed "s_^mvn _/var/maven/.m2/bin/mvncrlf _")"
      echo -e "\033[2m${docker_command} ${mvnImage} \033[1m${mvnCommand} ${mvn_docker_params}\033[0m"
      ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params}
    fi
  else
    echo -e "\033[2m${docker_command} ${mvnImage} \033[1m${mvnCommand} ${mvn_docker_params}\033[0m"
    ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params}
  fi
}

# TODO not tested
mvnBuildLocal() {
  local mvnCommand="$1"

  echo "Rebuilding using local JDK and Maven: expected jdk=${jdk}"
  # TODO need to define settings with ${base}/repository local repository to avoid mixing reproducible-central dependencies with day to day builds
  if [[ "${newline}" == crlf* ]]
  then
    ${mvnCommand} -Dline.separator=$'\r\n'
  else
    ${mvnCommand}
  fi
}

# rebuild with Maven tool (tool=mvn)
rebuildToolMvn() {
  # the effective rebuild command, adding artifact:buildinfo goal to compare with central content
  #local mvn_rebuild="${command} -V -e artifact:compare -Dbuildinfo.reproducible"
  local mvn_rebuild="${command} -V -e org.apache.maven.plugins:maven-artifact-plugin:3.3.0:compare -Dbuildinfo.reproducible"

  if [[ "${command}" == SHELL* ]]
  then
    # open a shell to do manual rebuild
    echo
    mvn -v
    echo
    echo "opening interactive shell: please run rebuild with required JDK then exit to continue:"
    echo -e "    \033[1m$(echo "${mvn_rebuild}" | cut -c 6-)\033[0m"
    ${SHELL} -i
  else
    # by default, build with Docker
    # TODO: on parameter, use instead mvnBuildLocal after selecting JDK
    #   jenv shell ${jdk}
    #   sdk use java ${jdk}
    mvnBuildDocker "${mvn_rebuild}" || fatal "failed to build"
  fi

  dos2unix ${buildinfo} || fatal "failed to convert buildinfo newlines"
  cp ${buildinfo} ../.. || fatal "failed to copy buildinfo file"

  buildcompare="$(dirname "${buildinfo}")/$(basename ${buildinfo} .buildinfo).buildcompare"
  dos2unix ${buildcompare} || fatal "failed to convert buildcompare newlines"
  cp ${buildcompare} ../.. || fatal "failed to copy buildcompare file"
}
