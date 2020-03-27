#!/bin/bash

repo=https://repo.maven.apache.org/maven2
groupId=org.apache.maven.plugins
artifactId=maven-source-plugin
groupDir=$(echo ${groupId} | tr '.' '/')

scm=https://github.com/apache/${artifactId}.git
build="mvn -Dmaven.test.skip package"

versionsWithoutTag=""
versions="2.0-beta-1 2.0-rc1 2.0 2.0.1 2.0.2 2.0.3 2.0.4 2.1 2.1.1 2.1.2 2.2 2.2.1 2.3 2.4
3.0.0 3.0.1 3.1.0 3.2.0 3.2.1"

mkdir --parents target
pushd target > /dev/null
[ -d ${artifactId} ] || git clone ${scm}

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
  outputTimestamp=$(unzip -p ${artifactId}-${version}.jar META-INF/maven/${groupId}/${artifactId}/pom.xml | grep "<project.build.outputTimestamp>" | sed 's/^.*<project.build.\(outputTimestamp>[^<]+\).*$/\1/')
  buildJdk=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Build-Jdk")
  unzip -p ${artifactId}-${version}.jar org/apache/maven/plugin/source/SourceBundler.class > ../tmp.class 2> /dev/null
  unzip -p ${artifactId}-${version}.jar org/apache/maven/plugin/source/AbstractJarSourceMojo.class >> ../tmp.class 2> /dev/null
  unzip -p ${artifactId}-${version}.jar org/apache/maven/plugin/source/SourceJarMojo.class >> ../tmp.class 2> /dev/null
  unzip -p ${artifactId}-${version}.jar org/apache/maven/plugins/source/SourceJarMojo.class >> ../tmp.class 2> /dev/null
  target=$(file -b ../tmp.class | cut -c 27-)
  #createdBy=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Created-By")

  win="" && $(grep -q $'\r' ${artifactId}-${version}.pom) && win=", built on Windows"

  echo -e "${pomDate}   ${version}\t${buildJdk}, bytecode ${target}${win} ${outputTimestamp}"
done

popd > /dev/null
