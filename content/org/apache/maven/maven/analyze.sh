#!/bin/bash

repo=https://repo.maven.apache.org/maven2
groupId=org.apache.maven
artifactId=maven-model # used to detect target bytecode by reading first .class
rootArtifactId=maven
modules="apache-maven maven-artifact maven-core maven-model maven-model-builder maven-settings..."
javaRootPackage=${groupId}
rootArtifactId=maven

groupDir=$(echo ${groupId} | tr '.' '/')
javaRootPackageDir=$(echo ${javaRootPackage} | tr '.' '/')

gitRepo=maven
scm=https://gitbox.apache.org/repos/asf/${gitRepo}.git
build="mvn -Dmaven.test.skip package -Papache-release -Dgpg.skip"

versionsWithoutTag=""
versions="2.0.9 2.0.10 2.0.11 2.1.0-M1 2.1.0 2.2.0 2.2.1\
 3.0-alpha-1 3.0-alpha-2 3.0-alpha-3 3.0-alpha-4 3.0-alpha-5 3.0-alpha-6 3.0-alpha-7 3.0-beta-1 3.0-beta-2 3.0-beta-3\
 3.0 3.0.1 3.0.2 3.0.3 3.0.4 3.0.5\
 3.1.0-alpha-1 3.1.0 3.1.1\
 3.2.1 3.2.2 3.2.3 3.2.5\
 3.3.1 3.3.3 3.3.9\
 3.5.0-alpha-1 3.5.0-beta-1 3.5.0 3.5.2 3.5.3 3.5.4\
 3.6.0 3.6.1 3.6.2 3.6.3"


mkdir --parents target
pushd target > /dev/null
[ -d ${gitRepo} ] || git clone ${scm}

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
  unzip -p ${artifactId}-${version}.jar $(unzip -qql ${artifactId}-${version}.jar | cut -c 31- | grep ${javaRootPackageDir} | grep .class$  | head -1) > ../tmp.class
  target=$(file -b ../tmp.class | cut -c 27-)
  #createdBy=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Created-By")

  win="" && $(grep -q $'\r' ${artifactId}-${version}.pom) && win=", built on Windows"

  echo -e "${pomDate}   ${version}\t${buildJdk}, bytecode ${target}${win} ${outputTimestamp}"
done

popd > /dev/null
