#!/bin/bash

buildspec=$1

echo "rebuilding from spec $1"

. $1

echo "- groupId: ${groupId}"
echo "- artifactId: ${artifactId}"
echo "- version: ${version}"
echo "- gitRepo: ${gitRepo}"
echo "- gitTag: ${gitTag}"
echo "- mvnImage: ${mvnImage}"
echo "- command: ${command}"

base="$PWD"

pushd `dirname ${buildspec}` > /dev/null
mkdir target
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
  ${mvnImage} ${command} -V -s /var/maven/.m2/settings.xml -Duser.home=/var/maven buildinfo:buildinfo -Dreference.repo=central

cp target/*.buildinfo ../..

popd > /dev/null
