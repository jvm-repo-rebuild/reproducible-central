#!/bin/bash

previousBuildspec=$1
nextVersion=$2

. ${previousBuildspec}

dir=`dirname ${previousBuildspec}`
file=`basename ${previousBuildspec} -${version}.buildspec`

nextBuildspec=${dir}/${file}-${nextVersion}.buildspec
sed "s/^version=.*/version=${nextVersion}/" ${previousBuildspec} > ${nextBuildspec}

# detect JDK used for next release, to change buildspec if necessary
previousBuildinfo=$(ls $dir | grep "\-${version}\.buildinfo")
previousJar="$(grep "\-${version}\.jar" $dir/$previousBuildinfo | head -1 | cut -d = -f 2)"
previousArtifactId="$(echo "$previousJar" | sed -e "s/-${version}.jar$//")"
nextJar="$previousArtifactId-$nextVersion.jar"

echo "detecting JDK from $nextJar downloaded from https://repo.maven.apache.org/maven2/$(echo ${groupId} | tr '.' '/')/${previousArtifactId}/${nextVersion}/"
[ -d tmp ] || mkdir tmp
[ -f tmp/$nextJar ] || curl -s --fail https://repo.maven.apache.org/maven2/$(echo ${groupId} | tr '.' '/')/${previousArtifactId}/${nextVersion}/$nextJar --output tmp/$nextJar
unzip -q -c tmp/$nextJar META-INF/MANIFEST.MF > tmp/$previousArtifactId-$nextVersion-MANIFEST.MF
unzip -q -c tmp/$nextJar META-INF/maven/$groupId/$previousArtifactId/pom.properties > tmp/$previousArtifactId-$nextVersion-pom.properties
unzip -q -c tmp/$nextJar META-INF/maven/$groupId/$previousArtifactId/pom.xml > tmp/$previousArtifactId-$nextVersion-pom.xml
du --apparent-size -h tmp/$previousArtifactId-$nextVersion*

nextJdk="$(unzip -q -c tmp/$nextJar META-INF/MANIFEST.MF | grep Jdk | cut -d ' ' -f 2 | sed -e 's/^1\.//')"
[ "$jdk" != "$nextJdk" ] && echo -e "\033[0;1mupdating jdk: $jdk => $nextJdk\033[0;0m" && sed -i "s/^jdk=.*/jdk=${nextJdk}/" ${nextBuildspec}

./rebuild.sh ${nextBuildspec} $3

echo
echo -e "if result is ok, run:"
echo -e "\033[0;32mgit add ${dir} ; git commit -m \"add ${artifactId} ${nextVersion}\" ; git push\033[0m"
