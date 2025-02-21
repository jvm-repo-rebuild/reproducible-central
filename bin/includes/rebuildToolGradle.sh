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
#  case ${jdk} in
#    11)
#      jdkImage="openjdk:11.0.14.1"
#      ;;
#    17)
#      jdkImage="openjdk:17-slim"
#      ;;
#  esac
  jdkImage="docker.io/library/gradle:8-jdk${jdk}"

  info "Rebuilding using container image ${jdkImage}"

  local OUTPUTDIR=repository
  [ -d ${OUTPUTDIR} ] && \rm -rf ${OUTPUTDIR}
  [ -d userhome/.m2 ] || mkdir -p userhome/.m2
  [ -d userhome/.gradle ] || mkdir -p userhome/.gradle
  [ -d $PWD/.bnd ] || mkdir -p $PWD/.bnd

  [ "${workdir}" = "" ] && workdir="/var/gradle/app"

  local engine_command="$RB_OCI_ENGINE run $([ "$CI" != true ] && echo "-it ")--rm --name rebuild-central\
    ${RB_OCI_ENGINE_RUN_OPTS}\
    -v $PWD:${workdir}${RB_OCI_VOLUME_FLAGS}\
    -v $PWD/userhome:/home/gradle${RB_OCI_VOLUME_FLAGS}\
    -v $PWD:/home/gradle/.m2${RB_OCI_VOLUME_FLAGS}\
    -v $PWD/userhome/.gradle:/home/gradle/.gradle${RB_OCI_VOLUME_FLAGS}\
    -v $PWD/.bnd:/.bnd
    -u $(id -u ${USER}):$(id -g ${USER})\
    -e MAVEN_CONFIG=/home/gradle/.m2\
    -e GRADLE_USER_HOME=/home/gradle/.gradle\
    -w ${workdir}"
  local gradle_engine_params="-Duser.home=/home/gradle"

  runcommand_time ${engine_command} ${jdkImage} ${command} ${gradle_engine_params}
  
  if [ $? -eq 0 ]; then
      # output content is expected to be available in repository/ directory

      # fix line endings of pom files for gradle on windows
      if [[ "${newline}" == crlf* ]]; then
        find ${OUTPUTDIR} -name "*.pom" -exec sed -i -z "s/\n/\r\n/g" {} \;
      fi

      # compare against reference from Maven Central and generate buildinfo and buildcompare
      compareOutput ${OUTPUTDIR}
  fi
}
