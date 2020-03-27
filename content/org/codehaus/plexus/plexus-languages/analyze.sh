#!/bin/bash

repo=https://repo.maven.apache.org/maven2
groupId=org.codehaus.plexus
artifactId=plexus-java
rootArtifactId=plexus-languages
groupDir=$(echo ${groupId} | tr '.' '/')
gitrepo=${rootArtifactId}

scm=https://github.com/codehaus-plexus/${rootArtifactId}.git

versionsWithoutTag=""
versions="0.9.0 0.9.1 0.9.2 0.9.3 0.9.4 0.9.5 0.9.6 0.9.7 0.9.8 0.9.9 0.9.10 0.9.11
1.0.0 1.0.1 1.0.2 1.0.3 1.0.4 1.0.5"

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
  [ -f ${rootArtifactId}-${version}.pom ] || wget ${repo}/${groupDir}/${rootArtifactId}/${version}/${rootArtifactId}-${version}.pom
done

for version in ${versionsWithoutTag} ${versions}
do
  pomDate=$(unzip -v ${artifactId}-${version}.jar META-INF/maven/${groupId}/${artifactId}/pom.xml | grep "META-INF/maven/${groupId}/${artifactId}/pom.xml" | sed 's/.*\(....-..-..\).*/\1/')
  outputTimestamp=$(grep "<project.build.outputTimestamp>" ${rootArtifactId}-${version}.pom | sed 's/^.*<project.build.\(outputTimestamp>[^<]+\).*$/\1/')
  buildJdk=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Build-Jdk")
  unzip -p ${artifactId}-${version}.jar org/codehaus/plexus/languages/java/jpms/ModuleInfoParser.class > ../tmp.class
  target=$(file -b ../tmp.class | cut -c 27-)
  #createdBy=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Created-By")

  win="" && $(grep -q $'\r' ${artifactId}-${version}.pom) && win=", built on Windows"

  echo -e "${pomDate}   ${version}\t${buildJdk}, bytecode ${target}${win} ${outputTimestamp}"
done

popd > /dev/null
