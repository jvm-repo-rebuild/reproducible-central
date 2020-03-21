#!/bin/bash

repo=https://repo.maven.apache.org/maven2
groupId=org.apache.jena
artifactId=jena-core
rootArtifactId=jena
groupDir=$(echo ${groupId} | tr '.' '/')
gitrepo=${rootArtifactId}

scm=https://github.com/apache/${gitrepo}.git
build="mvn -Dmaven.test.skip package"

versionsWithoutTag=""
versions="2.7.1 2.7.2 2.7.3 2.7.4 2.10.0 2.10.1 2.11.0 2.11.1 2.11.2 2.12.0 2.12.1 2.13.0
3.0.0 3.0.1 3.1.0 3.1.1 3.2.0 3.3.0 3.4.0 3.5.0 3.6.0 3.7.0 3.8.0 3.9.0 3.10.0 3.11.0 3.12.0 3.13.0 3.13.1 3.14.0"

mkdir --parents target
pushd target > /dev/null
[ -d ${gitrepo} ] || git clone ${scm}

mkdir --parents central
cd central
for version in ${versionsWithoutTag} ${versions}
do
  [ -f ${artifactId}-${version}.jar.sha1 ] || wget ${repo}/${groupDir}/${artifactId}/${version}/${artifactId}-${version}.jar.sha1
  [ -f ${artifactId}-${version}.jar ] || wget ${repo}/${groupDir}/${artifactId}/${version}/${artifactId}-${version}.jar
  [ -f ${artifactId}-${version}.pom ] || unzip -p ${artifactId}-${version}.jar META-INF/maven/${groupId}/${artifactId}/pom.xml > ${artifactId}-${version}.pom
  [ -f ${rootArtifactId}-${version}.pom ] || wget ${repo}/${groupDir}/${rootArtifactId}/${version}/${rootArtifactId}-${version}.pom
done

for version in ${versionsWithoutTag} ${versions}
do
  pomDate=$(unzip -v ${artifactId}-${version}.jar META-INF/maven/${groupId}/${artifactId}/pom.xml | grep "META-INF/maven/${groupId}/${artifactId}/pom.xml" | sed 's/.*\(....-..-..\).*/\1/')
  outputTimestamp=$(grep "<project.build.outputTimestamp>" ${rootArtifactId}-${version}.pom | sed 's/^.*<project.build.\(outputTimestamp>[^<]+\).*$/\1/')
  buildJdk=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Build-Jdk")
  unzip -p ${artifactId}-${version}.jar jena/query.class > ../tmp.class 2> /dev/null
  unzip -p ${artifactId}-${version}.jar org/apache/jena/JenaRuntime.class >> ../tmp.class 2> /dev/null
  target=$(file -b ../tmp.class | cut -c 27-)
  #createdBy=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Created-By")

  win="" && $(grep -q $'\r' ${artifactId}-${version}.pom) && win=", built on Windows"

  echo -e "${pomDate}   ${version}\t${buildJdk}, bytecode ${target}${win} ${outputTimestamp}"
done

popd > /dev/null
