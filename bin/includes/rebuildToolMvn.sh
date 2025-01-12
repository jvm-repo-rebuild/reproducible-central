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

. "${SCRIPTDIR}/bin/includes/mvnBuildDocker.sh"
. "${SCRIPTDIR}/bin/includes/mvnBuildLocal.sh"

# rebuild with Maven tool (tool=mvn)
rebuildToolMvn() {
  # the effective rebuild command, adding artifact:buildinfo goal to compare with central content
  #local mvn_rebuild="${command} -V -e artifact:compare -Dbuildinfo.reproducible"
  local mvn_rebuild="${command} -V -e org.apache.maven.plugins:maven-artifact-plugin:3.6.0:compare org.apache.maven.plugins:maven-artifact-plugin:3.6.0:describe-build-output -Dbuildinfo.reproducible -Dcompare.fail=false"
  if [ -n "${referenceRepo}" ]
  then
    mvn_rebuild="${mvn_rebuild} -Dreference.repo=${referenceRepo}"
  fi


  if [[ "${jdk}" == ??.0.* || -n "${RB_SHELL}" ]]
  then
    # force SHELL execution
    [[ "${command}" == SHELL* ]] || command="SHELL ${command}"
  fi

  if [[ "${command}" == SHELL* ]]
  then
    # open a shell to do manual rebuild
    echo
    mvn -v
    echo
    info "opening interactive shell: please run rebuild with required JDK then exit to continue:"
    local mvnVersion="3.6.3"
    case ${tool} in
      mvn-*)
        mvnVersion="$(echo "$tool" | cut -d - -f 2-)"
        ;;
    esac

    [[ "${newline}" == crlf* ]] && info "newline=${newline}" && mvn_rebuild="$(echo "${mvn_rebuild}" | sed "s_mvn _mvncrlf _")"
    runlog "\nsdk use java ${jdk}\nsdk use maven ${mvnVersion}\n${mvn_rebuild//SHELL /}"
    echo
    ${SHELL} -i
  else
    if [[ "${command}" == DOCKER* ]]
    then
      # open a shell to do manual rebuild in Docker
      warn "opening interactive shell in container runtime: please run rebuild with required JDK then exit to continue:"
      runlog "${mvn_rebuild//DOCKER /}"
      mvnBuildDocker "bash -i"
    else
      # by default, build with Docker
      # TODO: on parameter, use instead mvnBuildLocal after selecting JDK
      #   jenv shell ${jdk}
      #   sdk use java ${jdk}
      mvnBuildDocker "${mvn_rebuild}" || fatal "failed to build"
    fi
  fi

  dos2unix ${buildinfo} || fatal "failed to convert buildinfo newlines"
  cp ${buildinfo} ../.. || fatal "failed to copy buildinfo file"

  buildcompare="$(dirname "${buildinfo}")/$(basename ${buildinfo} .buildinfo).buildcompare"
  dos2unix ${buildcompare} || fatal "failed to convert buildcompare newlines"
  cp ${buildcompare} ../.. || fatal "failed to copy buildcompare file"
}
