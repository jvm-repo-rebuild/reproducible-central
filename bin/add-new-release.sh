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

referenceRepo="https://repo.maven.apache.org/maven2" && [ -n "$3" ] && referenceRepo=https://repository.apache.org/content/repositories/$3
echo "detecting JDK from $nextJar downloaded from $referenceRepo/$(echo ${groupId} | tr '.' '/')/${previousArtifactId}/${nextVersion}/"
[ -d tmp ] || mkdir tmp
[ -f tmp/$nextJar ] || curl -s --fail $referenceRepo/$(echo ${groupId} | tr '.' '/')/${previousArtifactId}/${nextVersion}/$nextJar --output tmp/$nextJar
if [ -f tmp/$nextJar ]
then
  unzip -q -c tmp/$nextJar META-INF/MANIFEST.MF | grep Jdk
  nextJdk="$(unzip -q -c tmp/$nextJar META-INF/MANIFEST.MF | grep Jdk | cut -d ' ' -f 2 | sed -e 's/^1\.//' | sed -e 's/\r//')"
  if [ -z "$nextJdk" ]
  then
    echo -e "\033[0;31mcould not detect JDK\033[0;0m"
    cat tmp/$previousArtifactId-$nextVersion-MANIFEST.MF
  else
    if [ "$jdk" != "$nextJdk" ]
    then
      echo -e "\033[0;1mupdating jdk: $jdk => $nextJdk\033[0;0m"
      sed -i "s/^jdk=.*/jdk=${nextJdk}/" ${nextBuildspec}
    fi
  fi

  echo "useful content for investigating rebuild environment:"
  unzip -q -c tmp/$nextJar META-INF/MANIFEST.MF > tmp/$previousArtifactId-$nextVersion-MANIFEST.MF
  unzip -q -c tmp/$nextJar META-INF/maven/$groupId/$previousArtifactId/pom.properties > tmp/$previousArtifactId-$nextVersion-pom.properties
  unzip -q -c tmp/$nextJar META-INF/maven/$groupId/$previousArtifactId/pom.xml > tmp/$previousArtifactId-$nextVersion-pom.xml
  du --apparent-size -h tmp/$previousArtifactId-$nextVersion*
  detectNewline() {
    [ -s $1 ] || return
    if [ "$(grep $'\r' $1 | wc -l)" -eq 0 ]
    then
      echo "$1 newline is *nix"
    else
      echo "$1 newline is windows"
    fi
  }
  detectNewline tmp/$previousArtifactId-$nextVersion-pom.properties
  detectNewline tmp/$previousArtifactId-$nextVersion-pom.xml
  echo "buildspec newline=$newline"
else
  echo -e "\033[0;31m  $nextJar not found\033[0;0m"
fi

echo
./rebuild.sh ${nextBuildspec} $3

echo
echo -e "if result is ok, run:"
echo -e "\033[0;32mgit add ${dir} ; git commit -m \"add ${artifactId} ${nextVersion}\" ; git push\033[0m"
