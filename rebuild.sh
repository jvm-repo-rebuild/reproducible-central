#!/usr/bin/env bash

fatal()
{
  echo "fatal: $1" 1>&2
  exit 1
}

display()
{
  echo -e "- $1: \033[1m${!1}\033[0m"
}

buildspec=$1
if [ -z "${buildspec}" ]
then
  fatal "usage: buildspec"
fi

echo -e "Rebuilding from spec \033[1m${buildspec}\033[0m"

. ${buildspec} || fatal "could not source ${buildspec}"

display "groupId"
display "artifactId"
display "version"
display "gitRepo"
display "gitTag"
display "tool"
display "jdk"
display "newline"
display "command"
display "buildinfo"

base="$PWD"

pushd `dirname ${buildspec}` >/dev/null || fatal "could not move into ${buildspec}"

# prepare source, using provided Git repository and tag
# TODO: support svn, support getting source-release.zip
[ -d buildcache ] || mkdir buildcache
cd buildcache
[ -d ${artifactId} ] || git clone ${gitRepo} ${artifactId} || fatal "failed to clone ${artifactId}"
cd ${artifactId}
echo -e "\033[2m$(pwd) \033[1mgit fetch\033[0m"
git fetch || fatal "failed to git fetch"
echo -e "\033[2m$(pwd) \033[1mgit git checkout -f ${gitTag}\033[0m"
git checkout -f ${gitTag} || fatal "failed to git checkout ${gitTag}"
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

echo -e "\033[1m$(pwd)\033[0m"

mvnBuildDocker() {
  local mvnCommand mvnImage crlfDocker
  mvnCommand="$1"
  crlfDocker="no"
  # select Docker image to match required JDK version: https://hub.docker.com/_/maven
  case ${jdk} in
    6 | 7)
      mvnImage=maven:3.6.1-jdk-${jdk}-alpine
      crlfDocker="yes"
      ;;
    8)
      mvnImage=maven:3.6.3-jdk-${jdk}-slim
      crlfDocker="yes"
      ;;
    9)
      mvnImage=maven:3-jdk-${jdk}-slim
      ;;
    14)
      mvnImage=maven:3.6.3-jdk-${jdk}
      ;;
    15)
      mvnImage=maven:3.6.3-openjdk-${jdk}
      ;;
    *)
      mvnImage=maven:3.6.3-jdk-${jdk}-slim
  esac

  echo "Rebuilding using Docker image ${mvnImage}"
  local docker_command="docker run -it --rm --name rebuild-central -v $PWD:/var/maven/app -v $base:/var/maven/.m2 -v $base/.npm:/.npm -u $(id -u ${USER}):$(id -g ${USER}) -e MAVEN_CONFIG=/var/maven/.m2 -w /var/maven/app"
  local mvn_docker_params="-Duser.home=/var/maven"
  if [[ "${newline}" == crlf* ]]
  then
    if [[ "${crlfDocker}" == "yes" ]]
    then
      echo -e "\033[2m${docker_command} ${mvnImage} \033[1m${mvnCommand} ${mvn_docker_params} -Dline.separator=\$'\\\\r\\\\n'\033[0m"
      ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params} -Dline.separator=$'\r\n'
    else
      mvnCommand="$(echo "${mvnCommand}" | sed "s_^mvn _/var/maven/.m2/mvncrlf _")"
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

  echo "Rebuilding using local JDK ${jdk}"
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
  local mvn_rebuild="${command} -V -e artifact:buildinfo -Dreference.repo=central -Dreference.compare.save -Dbuildinfo.reproducible"

  # by default, build with Docker
  # TODO: on parameter, use instead mvnBuildLocal after selecting JDK
  #   jenv shell ${jdk}
  #   sdk use java ${jdk}
  mvnBuildDocker "${mvn_rebuild}" || fatal "failed to build"

  dos2unix ${buildinfo}* || fatal "failed to convert buildinfo newlines"
  sed -i 's/reference_.*//' ${buildinfo}*.compare # waiting for MARTIFACT-19
  cp ${buildinfo}* ../.. || fatal "failed to copy buildinfo artifacts"

  echo
  echo -e "rebuild from \033[1m${buildspec}\033[0m"
  for f in ${buildinfo}*.compare
  do
    echo -e "  results in \033[1m$(dirname ${buildspec})/$(basename $f .buildinfo.compare).buildinfo\033[0m"
    echo -e "compared to Central Repository \033[1m$(dirname ${buildspec})/$(basename $f)\033[0m:"
  done
  . ${buildinfo}*.compare
  if [[ ${ko} > 0 ]]
  then
    echo -e "    ok=${ok}"
    echo -e "    okFiles=\"${okFiles}\""
    echo -e "    \033[31;1mko=${ko}\033[0m"
    echo -e "    koFiles=\"${koFiles}\""
    echo -e "build available in \033[1m$(dirname ${buildspec})/buildcache/${artifactId}\033[0m, where you can execute \033[36mdiffoscope\033[0m"
    echo -e "run \033[36mdiffoscope\033[0m as container with \033[1mdocker run --rm -t -w /mnt -v $(pwd):/mnt:ro registry.salsa.debian.org/reproducible-builds/diffoscope\033[0m"
  else
    echo -e "    \033[32;1mok=${ok}\033[0m"
    echo -e "    okFiles=\"${okFiles}\""
  fi

  if [[ ${buildspec} == wip/* ]]
  then
    echo -e "\033[93mWork In Progress\033[0m: once work ready to publish, move to target directory with \033[1mdir=content/$(echo ${groupId} | tr '.' '/')/${artifactId} ; mkdir -p \${dir} ; mv ${buildspec} wip/$(basename ${buildinfo})* \${dir} \033[0m"
  fi
}

# rebuild with SBT tool (tool=sbt)
rebuildToolSbt() {
  local sbtImage
  case ${jdk} in
    *)
      sbtImage=hseeberger/scala-sbt:8u222_1.3.5_2.13.1
  esac

  echo "Rebuilding using Docker image ${sbtImage}"
  [ -d $base/.cache ] || mkdir $base/.cache
  [ -d $base/.ivy2 ] || mkdir $base/.ivy2
  [ -d $base/.sbt ] || mkdir $base/.sbt
  local docker_command="docker run -it --rm --name rebuild-central -v $base/.cache:/home/sbtuser/.cache -v $base/.ivy2:/home/sbtuser/.ivy2 -v $base/.sbt:/home/sbtuser/.sbt -v $PWD:/home/sbtuser/dev -u "$(id -u):$(id -g)" -w /home/sbtuser/dev --env HOME=/home/sbtuser"
  ${docker_command} ${sbtImage} ${command} -Duser.home=/home/sbtuser

  dos2unix ${buildinfo} || fatal "failed to convert buildinfo newlines"
  cp ${buildinfo} ../.. || fatal "failed to copy buildinfo artifacts"
}

# rebuild with Gradle tool (tool=gradle)
rebuildToolGradle() {
  fatal "rebuild with Gradle tool not yet implemented"
}

case ${tool} in
  mvn)
    rebuildToolMvn
    ;;
  sbt)
    rebuildToolSbt
    ;;
  gradle)
    rebuildToolGradle
    ;;
  *)
    fatal "build tool not yet supported: ${tool}"
esac

#git reset --hard

popd > /dev/null
