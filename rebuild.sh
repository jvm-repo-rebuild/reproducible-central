#!/bin/bash

buildspec=$1
# known limitation: can't rebuild Windows reference artifact:
# - need to be able to inject -Dline.separator=$'\r\n'
# - need to do Git checkout with Windows newlines for pom.xml

echo "Rebuilding from spec ${buildspec}"

. ${buildspec}

echo "- groupId: ${groupId}"
echo "- artifactId: ${artifactId}"
echo "- version: ${version}"
echo "- gitRepo: ${gitRepo}"
echo "- gitTag: ${gitTag}"
echo "- jdk: ${jdk}"
echo "- newline: ${newline}"
echo "- command: ${command}"
echo "- buildinfo: ${buildinfo}"

base="$PWD"

pushd `dirname ${buildspec}` > /dev/null

# prepare source, using provided Git repository and tag
# TODO: support svn, support getting source-release.zip
[ -d target ] || mkdir target
cd target
[ -d ${artifactId} ] || git clone ${gitRepo} ${artifactId}
cd ${artifactId}
git pull
git checkout ${gitTag}

pwd

# the effective rebuild command, adding buildinfo plugin to compare with central content
mvn_rebuild="${command} -V -e buildinfo:buildinfo -Dreference.repo=central -Dreference.compare.save"

# by default, rebuild using Docker with some predefined images: don't hesitate to customize to match other choice (other images, or even not using Docker)
case ${jdk} in
  6 | 7)
    mvnImage=maven:3.6.1-jdk-${jdk}-alpine
    ;;
  *)
    mvnImage=maven:3.6.3-jdk-${jdk}-slim
esac

echo "Rebuilding using Docker image ${mvnImage}"
docker run -it --rm --name rebuild-central \
  -v "$PWD":/var/maven/app \
  -v "$base":/var/maven/.m2 \
  -u $(id -u ${USER}):$(id -g ${USER}) -e MAVEN_CONFIG=/var/maven/.m2 \
  -w /var/maven/app \
  ${mvnImage} ${mvn_rebuild} -s /var/maven/.m2/settings.xml -Duser.home=/var/maven

cp ${buildinfo}* ../..

popd > /dev/null
