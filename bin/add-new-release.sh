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
buildinfoOutputId="$(grep "\-${version}\.jar" $dir/$previousBuildinfo | head -1 | cut -d . -f 2)"
previousJar="$(grep "\-${version}\.jar" $dir/$previousBuildinfo | head -1 | cut -d = -f 2)"
jarGroupIdAsDir="$((grep "outputs.$buildinfoOutputId.coordinates=" $dir/$previousBuildinfo ; grep "outputs.$buildinfoOutputId.groupId=" $dir/$previousBuildinfo) | cut -d = -f 2 | cut -d : -f 1 | tr '.' '/')"
[ -n "$jarGroupIdAsDir" ] || jarGroupIdAsDir="$(echo "$groupId"  | tr '.' '/')"
jarArtifactId="$(echo "$previousJar" | sed -e "s/-${version}.jar$//")"
nextJar="$jarArtifactId-$nextVersion.jar"

referenceRepo="https://repo.maven.apache.org/maven2" && [ -n "$3" ] && referenceRepo=https://repository.apache.org/content/repositories/$3
echo "detecting JDK from $nextJar downloaded from $referenceRepo/${jarGroupIdAsDir}/${jarArtifactId}/${nextVersion}/"
[ -d tmp ] || mkdir tmp
[ -f tmp/$nextJar ] || curl -s --fail $referenceRepo/${jarGroupIdAsDir}/${jarArtifactId}/${nextVersion}/$nextJar --output tmp/$nextJar
if [ -f tmp/$nextJar ]
then
  unzip -q -c tmp/$nextJar META-INF/MANIFEST.MF | grep Jdk
  nextJdk="$(unzip -q -c tmp/$nextJar META-INF/MANIFEST.MF | grep Jdk | cut -d ' ' -f 2 | sed -e 's/^1\.//' | sed -e 's/\r//')"
  if [ -z "$nextJdk" ]
  then
    echo -e "\033[0;31mcould not detect JDK\033[0;0m"
    cat tmp/$jarArtifactId-$nextVersion-MANIFEST.MF
  else
    if [ "$jdk" != "$nextJdk" ]
    then
      echo -e "\033[0;1mupdating jdk: $jdk => $nextJdk\033[0;0m"
      sed -i "s/^jdk=.*/jdk=${nextJdk}/" ${nextBuildspec}
    fi
  fi

  if [[ ${groupId} == io.wcm* ]]
  then
    buildNumber="$(unzip -q -c tmp/$nextJar META-INF/MANIFEST.MF | grep Scm-Revision | cut -d ' ' -f 2)"
    timestamp="$(unzip -q -c tmp/$nextJar META-INF/MANIFEST.MF | grep Scm-Revision | cut -d ' ' -f 4 | sed -e 's/\r//')"
    sed -i "s/^buildNumber=.*/buildNumber=${buildNumber}/" ${nextBuildspec}
    sed -i "s/^timestamp=.*/timestamp=${timestamp}/" ${nextBuildspec}
    echo "io.wcm timestamp=${timestamp}"
    echo "io.wcm buildNumber=${buildNumber}"
  fi

  echo "useful content for investigating rebuild environment:"
  unzip -q -c tmp/$nextJar META-INF/MANIFEST.MF > tmp/$jarArtifactId-$nextVersion-MANIFEST.MF
  unzip -q -c tmp/$nextJar META-INF/maven/$groupId/$jarArtifactId/pom.properties > tmp/$jarArtifactId-$nextVersion-pom.properties
  unzip -q -c tmp/$nextJar META-INF/maven/$groupId/$jarArtifactId/pom.xml > tmp/$jarArtifactId-$nextVersion-pom.xml
  du --apparent-size -h tmp/$jarArtifactId-$nextVersion*
  detectNewline() {
    [ -s $1 ] || return
    if [ "$(grep $'\r' $1 | wc -l)" -eq 0 ]
    then
      echo "$1 newline is *nix"
    else
      echo "$1 newline is windows"
    fi
  }
  detectNewline tmp/$jarArtifactId-$nextVersion-pom.properties
  detectNewline tmp/$jarArtifactId-$nextVersion-pom.xml
  echo "buildspec newline=$newline"
  [ -n "$os" ] && echo "buildspec os=$os"
  [ -n "$arch" ] && echo "buildspec os=$arch"
  # TODO add a way to check if new release requires same os/arch (probably requires some config in buildspec: it's ok given it does not happen often and has by nature a hard to guess impact)

  # check git tag existence
  . ${nextBuildspec}
  echo "checking Git tag $gitTag in Git repo $gitRepo"
  git ls-remote --tags $gitRepo | grep "refs/tags/$gitTag$"
  if [ $(git ls-remote --tags $gitRepo | grep "refs/tags/$gitTag$" | wc -l) -eq 1 ]
  then
    echo "ok"
  else
    echo -e "\033[0;31m  Git tag $gitTag not found\033[0;0m"
    git ls-remote --tags $gitRepo | grep -v "{}" | grep "$version"
    echo "for full list: git ls-remote --tags $gitRepo | grep -v "{}""
  fi
else
  echo -e "\033[0;31m  $nextJar not found\033[0;0m"
fi

echo -e "test local build with: \033[0;32m./rebuild.sh ${nextBuildspec} $3\033[0m"

echo
echo -e "once buildspec is ok, either run:"
echo -e "\033[0;32mgit checkout -b $jarArtifactId-$nextVersion ; git add ${nextBuildspec} ; git commit -m \"add ${artifactId} ${nextVersion}\" ; git push --set-upstream origin $jarArtifactId-$nextVersion\033[0m"
echo -e "then create a PR"
echo -e "or commit directly to master by running:"
echo -e "\033[0;32mbin/update-project-summary.sh ${dir} ; git add ${dir} ; git commit -m \"add ${artifactId} ${nextVersion}\" ; git push\033[0m"
