#!/bin/bash

repo=https://repo.maven.apache.org/maven2
groupId=org.fusesource.jansi
artifactId=jansi
rootArtifactId=jansi-project
modules="jansi example"
javaRootPackage=${groupId}

groupDir=$(echo ${groupId} | tr '.' '/')
javaRootPackageDir=$(echo ${javaRootPackage} | tr '.' '/')

gitRepo=jansi
scm=https://github.com/fusesource/${gitRepo}.git
build="mvn -Dmaven.test.skip package"

versionsWithoutTag=""
versions="1.2.1 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12 1.13 1.14 1.15 1.16 1.17 1.17.1"
# tag prefix is jansi- until 1.5, then jansi-project- since 1.6


mkdir --parents target
pushd target
[ -d ${gitRepo} ] || git clone ${scm}

mkdir --parents central
cd central
for version in ${versionsWithoutTag} ${versions}
do
  [ -f ${artifactId}-${version}.jar.sha1 ] || wget ${repo}/${groupDir}/${artifactId}/${version}/${artifactId}-${version}.jar.sha1
  [ -f ${artifactId}-${version}.jar ] || wget ${repo}/${groupDir}/${artifactId}/${version}/${artifactId}-${version}.jar
  [ -f ${artifactId}-${version}.pom ] || unzip -p ${artifactId}-${version}.jar META-INF/maven/${groupId}/${artifactId}/pom.xml > ${artifactId}-${version}.pom
done

for version in ${versionsWithoutTag} ${versions}
do
  pomDate=$(unzip -v ${artifactId}-${version}.jar META-INF/maven/${groupId}/${artifactId}/pom.xml | grep "META-INF/maven/${groupId}/${artifactId}/pom.xml" | sed 's/.*\(....-..-..\).*/\1/')
  buildJdk=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Build-Jdk")
  unzip -p ${artifactId}-${version}.jar $(unzip -qql ${artifactId}-${version}.jar | cut -c 31- | grep ${javaRootPackageDir} | grep .class$  | head -1) > ../tmp.class
  target=$(file -b ../tmp.class | cut -c 27-)
  #createdBy=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Created-By")

  win="" && $(grep -q $'\r' ${artifactId}-${version}.pom) && win=", built on Windows"

  echo -e "${pomDate}   ${version}\t${buildJdk}, bytecode ${target}${win}"
done

popd
