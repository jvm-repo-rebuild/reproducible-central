#!/usr/bin/env bash

# Autogenerate a work-in-progress buildspec for an artifact
# Specified either as a path to pom or as groupId:artifactId:version

if [ "$#" -eq 1 ]; then
    path=$1

    pomfile="$(basename $path)"
    dir="$(dirname $path)"
    version="$(basename $dir)"
    dir="$(dirname $dir)"
    artifactId="$(basename $dir)"
    groupIdDir="$(dirname $dir)"
    groupId="$(echo "$groupIdDir" | sed -e 's_/_._g')"
elif [ "$#" -eq 2 ] && [ "$1" == "--gav" ]; then
    gav="$2"
    IFS=':' read -r groupId artifactId version <<< "$gav"

    groupIdDir="${groupId//./\/}"
    pomfile="$(basename $path)"
    path="${groupIdDir}/${artifactId}/${version}/${pomfile}"
else
    echo "Usage:" >&2
    echo "    $0 org/foo/bar/1.2.3/bar-1.2.3.pom" >&2
    echo "    $0 --gav org.foo:bar:1.2.3" >&2
    exit 1
fi

echo "$groupId:$artifactId:$version"
echo "https://repo.maven.apache.org/maven2/$(dirname $path)"
echo "https://central.sonatype.com/artifact/$groupId/$artifactId"
echo

[ -d tmp ] || mkdir tmp
[ -f tmp/$path ] || curl -s --fail https://repo.maven.apache.org/maven2/$path --output tmp/$pomfile
jar="$artifactId-$version.jar"
[ -f tmp/$jar ] || curl -s --fail https://repo.maven.apache.org/maven2/$groupIdDir/$artifactId/$version/$jar --output tmp/$jar
detectNewline() {
    if [ "$(grep $'\r' $1 | wc -l)" -eq 0 ]
    then
      echo "$1 newline is *nix"
    else
      echo "$1 newline is windows"
    fi
}
[ -f tmp/$jar ] && unzip -q -c tmp/$jar META-INF/MANIFEST.MF > tmp/$artifactId-$version-MANIFEST.MF \
                && unzip -q -c tmp/$jar META-INF/maven/$groupId/$artifactId/pom.properties > tmp/$artifactId-$version-pom.properties \
                && unzip -q -c tmp/$jar META-INF/maven/$groupId/$artifactId/pom.xml > tmp/$artifactId-$version-pom.xml \
                && unzip -q -c tmp/$jar META-INF/MANIFEST.MF | grep Jdk | sed -e 's/ 1\.//' | sed -e 's/\r//' \
                && detectNewline tmp/$artifactId-$version-pom.properties \
                && detectNewline tmp/$artifactId-$version-pom.xml

mvn help:effective-pom -f bin/.wip.pom -Dartifact=$groupId:$artifactId:$version > tmp/$artifactId-$version-effective-pom.xml
dev=$(cat tmp/$artifactId-$version-effective-pom.xml | grep developerConnection | cut -d '>' -f 2 | cut -d '<' -f 1)

echo
du --apparent-size -h tmp/$artifactId-$version*
echo

gitRepo="$(echo "$dev" | sed -e 's/scm:git://' | sed -e 's_git@github.com:_https://github.com/_')"
echo "$gitRepo"

[ -f wip/maven-metadata.xml ] && rm wip/maven-metadata.xml
spec="wip/$artifactId-$version.buildspec"

echo "groupId=$groupId
artifactId=$artifactId
display=\${groupId}:\${artifactId}
version=${version}

gitRepo=${gitRepo}
gitTag=\${artifactId}-\${version}

tool=mvn
jdk=11
newline=lf
#umask=022

command=\"mvn -Papache-release clean package -DskipTests -Dmaven.javadoc.skip -Dgpg.skip\"
buildinfo=target/\${artifactId}-\${version}.buildinfo

#diffoscope=\${artifactId}-\${version}.diffoscope
issue=" > $spec

echo "./rebuild.sh $spec"
