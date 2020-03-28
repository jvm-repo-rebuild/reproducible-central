#!/bin/bash

buildspec=$1
# known limitation: can't rebuild Windows reference artifact:
# - need to be able to inject -Dline.separator=$'\r\n'
# - need to do Git checkout with Windows newlines for pom.xml

echo "rebuilding from spec ${buildspec}"

. ${buildspec}

echo "- groupId: ${groupId}"
echo "- artifactId: ${artifactId}"
echo "- version: ${version}"
echo "- gitRepo: ${gitRepo}"
echo "- gitTag: ${gitTag}"
echo "- mvnImage: ${mvnImage}"
echo "- command: ${command}"
echo "- buildinfo: ${buildinfo}"

base="$PWD"

pushd `dirname ${buildspec}` > /dev/null
[ -d target ] || mkdir target
cd target
[ -d ${artifactId} ] || git clone ${gitRepo} ${artifactId}
cd ${artifactId}
git pull
git checkout ${gitTag}

pwd
docker run -it --rm --name rebuild-central \
  -v "$PWD":/var/maven/app \
  -v "$base":/var/maven/.m2 \
  -u $(id -u ${USER}):$(id -g ${USER}) -e MAVEN_CONFIG=/var/maven/.m2 \
  -w /var/maven/app \
  ${mvnImage} ${command} -V -s /var/maven/.m2/settings.xml -Duser.home=/var/maven buildinfo:buildinfo -Dreference.repo=central -Dreference.compare.save

cp ${buildinfo}* ../..

popd > /dev/null
