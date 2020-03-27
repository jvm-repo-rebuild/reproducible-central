#!/bin/bash

repo=https://repo.maven.apache.org/maven2
groupId=org.apache.maven.doxia
artifactId=doxia-site-renderer
rootArtifactId=doxia-sitetools
groupDir=$(echo ${groupId} | tr '.' '/')
gitrepo=maven-${rootArtifactId}

scm=https://github.com/apache/${gitrepo}.git

versionsWithoutTag=""
versions="1.0-alpha-9 1.0-alpha-10 1.0-alpha-11 1.0 1.1 1.1.1 1.1.2 1.1.3 1.1.4 1.2 1.3 1.4 1.6 1.7 1.7.1 1.7.2 1.7.3 1.7.4 1.7.5 1.8 1.8.1 1.9 1.9.1 1.9.2"

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
  unzip -p ${artifactId}-${version}.jar org/apache/maven/doxia/siterenderer/DefaultSiteRenderer.class > ../tmp.class 2> /dev/null
  target=$(file -b ../tmp.class | cut -c 27-)
  #createdBy=$(unzip -p ${artifactId}-${version}.jar META-INF/MANIFEST.MF | dos2unix | grep "Created-By")

  win="" && $(grep -q $'\r' ${artifactId}-${version}.pom) && win=", built on Windows"

  echo -e "${pomDate}   ${version}\t${buildJdk}, bytecode ${target}${win} ${outputTimestamp}"
done

popd > /dev/null
