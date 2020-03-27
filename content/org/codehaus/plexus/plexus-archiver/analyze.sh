#!/bin/bash

repo=https://repo.maven.apache.org/maven2
groupId=org.codehaus.plexus
artifactId=plexus-archiver
groupDir=$(echo ${groupId} | tr '.' '/')

scm=https://github.com/codehaus-plexus/${artifactId}.git
build="mvn -Dmaven.test.skip package"

versionsWithoutTag="1.0-alpha-3 1.0-alpha-4 1.0-alpha-5 1.0-alpha-6 1.0-alpha-7 1.0-alpha-8 1.0-alpha-9 1.0-alpha-10 1.0-alpha-11 1.0-alpha-12 1.0 1.1 1.2\
 2.0 2.0.1 2.0.2 2.1 2.1.1 2.1.2 2.2 2.3 2.4 2.4.1 2.4.3 2.4.4 2.5"
versions="2.6 2.6.1 2.6.2 2.6.3 2.6.4 2.7 2.7.1 2.8 2.8.1 2.8.2 2.8.3 2.8.4 2.9 2.9.1 2.10-beta-1 2.10 2.10.1 2.10.2 2.10.3 2.11\
 3.0 3.0.1 3.0.2 3.0.3 3.1 3.1.1 3.2 3.3 3.4 3.4.1 3.5 3.6.0 3.7.0\
 4.0.0 4.1.0 4.2.0 4.2.1 4.2.2"

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
  unzip -p ${artifactId}-${version}.jar org/codehaus/plexus/archiver/Archiver.class > ../tmp.class
  target=$(file -b ../tmp.class | cut -c 27-)
  #createdBy=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Created-By")

  win="" && $(grep -q $'\r' ${artifactId}-${version}.pom) && win=", built on Windows"

  echo -e "${pomDate}   ${version}\t${buildJdk}, bytecode ${target}${win} ${outputTimestamp}"
done

popd > /dev/null
