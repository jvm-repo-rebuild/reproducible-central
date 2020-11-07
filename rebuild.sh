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
git fetch || fatal "failed to git fetch"
git checkout ${gitTag} || fatal "failed to git checkout ${gitTag}"
if [ "${newline}" == "crlf" ]
then
  echo "converting newlines to crlf"
  git ls-files --eol | grep w/lf | cut -c 40- | xargs -d '\n' unix2dos 2> /dev/null
fi

echo -e "\033[1m$(pwd)\033[0m"

mvnBuildDocker() {
  local mvnCommand mvnImage
  mvnCommand="$1"
  # select Docker image to match required JDK version
  case ${jdk} in
    6 | 7)
      mvnImage=maven:3.6.1-jdk-${jdk}-alpine
      ;;
    9)
      mvnImage=maven:3-jdk-${jdk}-slim
      ;;
    *)
      mvnImage=maven:3.6.3-jdk-${jdk}-slim
  esac

  echo "Rebuilding using Docker image ${mvnImage}"
  local docker_command="docker run -it --rm --name rebuild-central -v $PWD:/var/maven/app -v $base:/var/maven/.m2 -v $base/.npm:/.npm -u $(id -u ${USER}):$(id -g ${USER}) -e MAVEN_CONFIG=/var/maven/.m2 -w /var/maven/app"
  local mvn_docker_params="-Duser.home=/var/maven"
  if [[ "${newline}" == crlf* ]]
  then
    ${docker_command} ${mvnImage} ${mvnCommand} ${mvn_docker_params} -Dline.separator=$'\r\n'
  else
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
  local mvn_rebuild="${command} -V -e artifact:buildinfo -Dreference.repo=central -Dreference.compare.save"

  # by default, build with Docker
  # TODO: on parameter, use instead mvnBuildLocal after selecting JDK
  #   jenv shell ${jdk}
  #   sdk use java ${jdk}
  mvnBuildDocker "${mvn_rebuild}" || fatal "failed to build"

  dos2unix ${buildinfo}* || fatal "failed to convert buildinfo newlines"
  cp ${buildinfo}* ../.. || fatal "failed to copy buildinfo artifacts"
  for f in ${buildinfo}*.compare ; do echo -e "rebuilding from \033[1m${buildspec}\033[0m results in \033[1mcat $(dirname ${buildspec})/$(basename $f)\033[0m:"; done
  cat ${buildinfo}*.compare | sed 's/^/    /'
  echo -e "build available in \033[1m$(dirname ${buildspec})/buildcache/${artifactId}\033[0m, where you can execute diffoscope"
  echo -e "run diffoscope as container with \033[1mdocker run --rm -t -w /mnt -v $(pwd)/${buildspec})/buildcache/${artifactId}:/mnt:ro registry.salsa.debian.org/reproducible-builds/diffoscope\033[0m"
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

git reset --hard

popd > /dev/null
