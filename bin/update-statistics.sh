#!/bin/bash

export LC_ALL=C

echo -n > tmp-tool-jdk
echo -n > doc/buildspecs.txt

tool=mvn

for buildspec in $(find content -name "*.buildspec" -print)
do
  . ${buildspec}
  printf "%-9s %3d\n" ${tool} ${jdk} >> tmp-tool-jdk
  printf "%-9s %3d ${buildspec}\n" ${tool} ${jdk} >> doc/buildspecs.txt
done

cat tmp-tool-jdk | wc -l > doc/buildspec-stats.txt
sort tmp-tool-jdk | uniq -c >> doc/buildspec-stats.txt

# Docker image per maven tool configuration as defined in rebuild.sh
mvnImage() {
  local tool jdk mvnVersion
  tool="$1"
  jdk="$2"

  mvnVersion="3.6.3"
  case ${jdk} in
    18)
      mvnVersion="3"
  esac
  case ${tool} in
    mvn-*)
      mvnVersion="$(echo "$tool" | cut -d - -f 2)"
  esac

  # select Docker image to match required JDK version: https://hub.docker.com/_/maven
  case ${jdk} in
    6 | 7)
      mvnImage=maven:3.6.1-jdk-${jdk}-alpine
      ;;
    8)
      mvnImage=maven:${mvnVersion}-jdk-${jdk}-slim
      ;;
    9)
      mvnImage=maven:3-jdk-${jdk}-slim
      ;;
    14)
      mvnImage=maven:${mvnVersion}-jdk-${jdk}
      ;;
    15 | 16 | 17)
      mvnImage=maven:${mvnVersion}-openjdk-${jdk}-slim
      ;;
    *)
      mvnImage=maven:${mvnVersion}-openjdk-${jdk}-slim
  esac

  # check image existence
  docker manifest inspect ${mvnImage} > /dev/null 2>&1 || echo "image ${mvnImage} does not exist for $tool JDK $jdk"
}

sort tmp-tool-jdk | uniq | grep "mvn" | while read val
do
  mvnImage $val
  echo "$val $mvnImage" >> doc/buildspec-stats.txt
done

rm tmp-tool-jdk
cat doc/buildspec-stats.txt