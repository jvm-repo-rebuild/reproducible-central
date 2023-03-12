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

# rebuild with Gradle tool (tool=gradle)
rebuildToolGradle() {
  local jdkImage
  case ${jdk} in
    11)
      jdkImage="openjdk:11.0.14.1"
  esac

  info "Rebuilding using Docker image ${jdkImage}"

  [ -d central ] && \rm -rf central
  [ -d repository ] && \rm -rf repository

  local docker_command="docker run -it --rm --name rebuild-central -v $PWD:/var/gradle/app -v $PWD:/var/gradle/.m2 -v $base/.sbt:/var/gradle/.sbt -v $base/.bnd:/.bnd -u $(id -u ${USER}):$(id -g ${USER}) -e MAVEN_CONFIG=/var/gradle/.m2 -w /var/gradle/app"
  local gradle_docker_params="-Duser.home=/var/gradle"
  runcommand ${docker_command} ${jdkImage} ${command} ${gradle_docker_params}

  buildcompare="$(basename ${buildinfo} .buildinfo).buildcompare"
  info "computing ${buildinfo} and ${buildcompare}"
  echo "name=${display}" > ${buildinfo}
  echo "group-id=${groupId}" >> ${buildinfo}
  echo "artifact-id=${artifactId}" >> ${buildinfo}
  echo >> ${buildinfo}
  echo "build-tool=gradle" >> ${buildinfo}
  echo "java.version=${jdk}" >> ${buildinfo}
  echo "os.name=${newline}" >> ${buildinfo}
  local ok=()
  local okFiles=()
  local ko=()
  local koFiles=()
  local n=0
  local i=0
  for pom in $(find repository -type f -name "*.pom" | cut -c 12- | sort)
  do
    ((n++))
    d=$(dirname $pom)
    [ -d central/$d ] || mkdir -p central/$d
    echo >> ${buildinfo}
    ga_dir=$(dirname $d)
    g_dir=$(dirname $ga_dir)
    echo "outputs.${n}.coordinates=$(echo "$g_dir" | sed s_/_._g):$(basename $ga_dir)" >> ${buildinfo}
    echo >> ${buildinfo}

    i=0
    for f in `find repository/$d -maxdepth 1 -type f | grep -v "\-javadoc.jar" | cut -c 12- | sort`
    do
      wget -q https://repo.maven.apache.org/maven2/$f -O central/$f

      echo "outputs.${n}.${i}.filename=$(basename $f)" >> ${buildinfo}
      echo "outputs.${n}.${i}.length=$(du -b repository/$f | cut -f 1)" >> ${buildinfo}
      echo "outputs.${n}.${i}.checksums.sha512=$(sha512sum repository/$f | cut -f 1)" >> ${buildinfo}
      echo >> ${buildinfo}
      ((i++))

      diff -q repository/$f central/$f > /dev/null
      if [ $? -eq 0 ]
      then
        ok+=($f)
        okFiles+=( $(basename $f) )
      else
        ko+=($f)
        koFiles+=( $(basename $f) )
      fi
    done
  done

  buildcompare="$(basename ${buildinfo} .buildinfo).buildcompare"
  echo "version=${version}" > ${buildcompare}
  echo "ok=${#ok[@]}" >> ${buildcompare}
  echo "ko=${#ko[@]}" >> ${buildcompare}
  echo "okFiles=\"${okFiles[@]}\"" >> ${buildcompare}
  echo "koFiles=\"${koFiles[@]}\"" >> ${buildcompare}
  # TODO reference_java_version
  # TODO reference_os_name
  for f in ${ko[@]}
  do
    echo "# diffoscope repository/$f central/$f" >> ${buildcompare}
  done

  cp ${buildinfo} ../.. || fatal "failed to copy buildinfo file"
  cp ${buildcompare} ../.. || fatal "failed to copy buildcompare file"
}
