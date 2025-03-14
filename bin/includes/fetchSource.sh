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

fetchSource() {
[ -z "${groupId}" ] && fatal "Cannot run this separately"
[ -z "${artifactId}" ] && fatal "Cannot run this separately"

# check that maven-metadata.xml is there, or init content
if [ ! -f maven-metadata.xml ]
then
  info "Fetching maven-metadata.xml from Maven Central"
  metaUrl="https://repo.maven.apache.org/maven2/$(echo ${groupId} | tr '.' '/')/${artifactId}/maven-metadata.xml"
  echo -e "downloading \033[1m${metaUrl}\033[0m to $(pwd)"
  runcommand curl -s $metaUrl --output maven-metadata.xml || fatal "failed to download maven-metadata.xml"
  head -15 maven-metadata.xml
fi

# prepare source, using provided Git repository and tag or sourceDistribution
[ -d buildcache ] || mkdir buildcache
cd buildcache
if [ -z "${sourceDistribution}" ]
then
  # use provided Git repository and tag
  info "Fetching source code from Git \033[1m${gitRepo}\033[0m on tag \033[1m${gitTag}\033[0m"
  [ -d ${artifactId} ] || git clone -q ${gitRepo} ${artifactId} || fatal "failed to clone ${artifactId}"
  cd ${artifactId}
  pwd

  # check and update permissions vs umask configured in buildspec
  stat=$(stat -c "%a" .)
  if [ "$stat" == "775" ]
  then
    [ "$umask" == "022" ] && echo "applying umask $umask: chmod -R g-w" && chmod -R g-w .
  elif [ "$stat" == "755" ]
  then
    [ "$umask" != "022" ] && echo "applying umask $umask: chmod -R g+w" && chmod -R g+w .
  else
    echo "WARNING unexpected directory permission $stat"
    ls -l
  fi

  runcommand git remote -v
  runlog "git fetch"
  git fetch --tags || fatal "failed to git fetch"

  [[ "${gitTag}" == git* ]] && echo "evaluating: $gitTag" && gitTag="$(eval ${gitTag})"

  runlog "git checkout -q -f ${gitTag}"
  git checkout -q -f ${gitTag} || fatal "failed to git checkout ${gitTag}"
  if [ "${newline}" == "crlf" ]
  then
    echo "converting newlines to crlf"
    xargs="xargs"
    set -e
    if [ "$(uname -s)" ==  "Darwin" ]
    then
      command -v gxargs >/dev/null 2>&1 || { echo "require GNU xargs: brew install findutils.  Aborting."; exit 1; }
      xargs="gxargs"
    fi
    git ls-files --eol | grep w/lf | cut -c 40- | ${xargs} -d '\n' unix2dos 2> /dev/null
    # re-run without hiding output to show if there are issues
    git ls-files --eol | grep w/lf | cut -c 40- | ${xargs} -d '\n' unix2dos
  fi
else
  # use provided sourceDistribution
  info "Fetching source code from distribution \033[1m${sourceDistribution}\033[0m"
  [ -f $(basename ${sourceDistribution}) ] || wget -q ${sourceDistribution}
  [ -d ${sourcePath} ] && \rm -rf ${sourcePath}
  unzip -q $(basename ${sourceDistribution})
  cd ${sourcePath}
  [ -n "${sourceRmFiles}" ] && \rm ${sourceRmFiles}
fi

info "Source code available in: $(pwd)"

}