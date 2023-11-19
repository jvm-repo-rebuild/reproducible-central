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

# rebuild with Gradle tool (tool=gradle) and generate .buildinfo and .buildcompare files
rebuildToolGradle() {

  ### 1. rebuild
  local jdkImage
  case ${jdk} in
    11)
      jdkImage="openjdk:11.0.14.1"
      ;;
    17)
      jdkImage="openjdk:17-slim"
      ;;
  esac
  jdkImage="gradle:8-jdk${jdk}"

  info "Rebuilding using Docker image ${jdkImage}"

  local OUTPUTDIR=repository
  [ -d ${OUTPUTDIR} ] && \rm -rf ${OUTPUTDIR}

  local docker_command="docker run -it --rm --name rebuild-central\
    -v $PWD:/var/gradle/app -v $PWD:/var/gradle/.m2 -v $base/.sbt:/var/gradle/.sbt -v $base/.bnd:/.bnd\
    -u $(id -u ${USER}):$(id -g ${USER})\
    -e MAVEN_CONFIG=/var/gradle/.m2\
    -w /var/gradle/app"
  local gradle_docker_params="-Duser.home=/var/gradle"

  runcommand ${docker_command} ${jdkImage} ${command} ${gradle_docker_params}
  # output content is expected to be available in repository/ directory

  # compare against reference from Maven Central and generate buildinfo and buildcompare
  compareOutput ${OUTPUTDIR}
}
