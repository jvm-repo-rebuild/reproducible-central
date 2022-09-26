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
if [ -z "${sourceDistribution}" ]
then
  display "gitRepo"
  display "gitTag"
else
  display "sourceDistribution"
fi
display "tool"
display "jdk"
display "newline"
display "command"
display "buildinfo"

base="$PWD"

pushd `dirname ${buildspec}` >/dev/null || fatal "could not move into ${buildspec}"

# check that maven-metadata.xml is there, or init content
if [ ! -f maven-metadata.xml ]
then
  metaUrl="https://repo.maven.apache.org/maven2/$(echo ${groupId} | tr '.' '/')/${artifactId}/maven-metadata.xml"
  echo -e "downloading \033[1m${metaUrl}\033[0m to $(pwd)"
  curl -s $metaUrl --output maven-metadata.xml || fatal "failed to download maven-metadata.xml"
  head -15 maven-metadata.xml
fi

# prepare source, using provided Git repository and tag or sourceDistribution
[ -d buildcache ] || mkdir buildcache
cd buildcache
if [ -z "${sourceDistribution}" ]
then
  # use provided Git repository and tag
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
else
  # use provided sourceDistribution
  [ -f $(basename ${sourceDistribution}) ] || wget ${sourceDistribution}
  [ -d ${sourcePath} ] || unzip $(basename ${sourceDistribution})
  cd ${sourcePath}
  [ -n "${sourceRmFiles}" ] && \rm ${sourceRmFiles}
fi

echo -e "\033[1m$(pwd)\033[0m"

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
    15 | 16 | 17)
      mvnImage=maven:${mvnVersion}-openjdk-${jdk}-slim
      ;;
    *)
      mvnImage=maven:${mvnVersion}-openjdk-${jdk}-slim
  esac

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

displayResult() {
  local buildcompare version ok ko okFiles koFiles reference_java_version reference_os_name
  buildcompare="$(dirname "${buildinfo}")/$(basename ${buildinfo} .buildinfo).buildcompare"

  echo -e "rebuild from \033[1m${buildspec}\033[0m"
  local compare=""
  for f in ${buildcompare}
  do
    compare=$f
    echo -e "  results in \033[1m$(dirname ${buildspec})/$(basename $f .buildcompare).buildinfo\033[0m"
    echo -e "compared to Central Repository \033[1m$(dirname ${buildspec})/$(basename $f)\033[0m:"
  done
  . ${buildcompare}
  if [[ ${ko} > 0 ]]
  then
    echo -e "    ok=${ok}"
    echo -e "    okFiles=\"${okFiles}\""
    echo -e "    \033[31;1mko=${ko}\033[0m"
    echo -e "    koFiles=\"${koFiles}\""
    if [ -n "${reference_java_version}" ]
    then
      echo -e "    check .buildspec \033[1mjdk=${jdk}\033[0m vs reference \033[1mjava.version=${reference_java_version}\033[0m"
    fi
    if [ -n "${reference_os_name}" ]
    then
      echo -e "    check .buildspec \033[1mnewline=${newline}\033[0m vs reference \033[1mos.name=${reference_os_name}\033[0m (newline should be crlf if os.name is Windows, lf instead)"
    fi
    echo -e "build available in \033[1m$(dirname ${buildspec})/buildcache/${artifactId}\033[0m, where you can execute \033[36mdiffoscope\033[0m"
    grep '# diffoscope ' ${buildcompare}
#    echo -e "run \033[36mdiffoscope\033[0m as container with \033[1mdocker run --rm -t -w /mnt -v $(pwd):/mnt:ro registry.salsa.debian.org/reproducible-builds/diffoscope\033[0m"
    echo -e "To see every differences between current rebuild and reference, run:"
    if [ -z "${sourcePath}" ]
    then
      echo -e "    \033[1m./build_diffoscope.sh $(dirname ${buildspec})/$(basename ${compare}) buildcache/${artifactId}\033[0m"
    else
      echo -e "    \033[1m./build_diffoscope.sh $(dirname ${buildspec})/$(basename ${compare}) buildcache/${sourcePath}\033[0m"
    fi
  else
    echo -e "    \033[32;1mok=${ok}\033[0m"
    echo -e "    okFiles=\"${okFiles}\""
  fi

  if [[ ${buildspec} == wip/* ]]
  then
    echo -e "\033[93mWork In Progress\033[0m: once work ready to publish, move to target directory with \033[1mdir=content/$(echo ${groupId} | tr '.' '/')/${artifactId} ; mkdir -p \${dir} ; mv ${buildspec} wip/$(basename ${buildinfo} .buildinfo).build* \${dir} \033[0m"
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
  local jdkImage
  case ${jdk} in
    11)
      jdkImage="openjdk:11.0.14.1"
  esac

  echo "Rebuilding using Docker image ${jdkImage}"

  [ -d central ] && \rm -rf central
  [ -d repository ] && \rm -rf repository

  local docker_command="docker run -it --rm --name rebuild-central -v $PWD:/var/gradle/app -v $PWD:/var/gradle/.m2 -v $base/.sbt:/var/gradle/.sbt -v $base/.bnd:/.bnd -u $(id -u ${USER}):$(id -g ${USER}) -e MAVEN_CONFIG=/var/gradle/.m2 -w /var/gradle/app"
  local gradle_docker_params="-Duser.home=/var/gradle"
  echo -e "\033[2m${docker_command} ${jdkImage} \033[1m${command} ${gradle_docker_params}\033[0m"
  ${docker_command} ${jdkImage} ${command} ${gradle_docker_params}

  buildcompare="$(basename ${buildinfo} .buildinfo).buildcompare"
  echo "computing ${buildinfo} and ${buildcompare}"
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

case ${tool} in
  mvn*)
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

echo
displayResult

#git reset --hard

popd > /dev/null
