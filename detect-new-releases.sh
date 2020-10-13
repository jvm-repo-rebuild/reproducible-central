#!/bin/bash

for bs in $(
  # get the last buildspec for each project
  lastbuildspec=""
  anchor=""

  for buildspec in `find content -name '*.buildspec' -print | sort`
  do
    . $buildspec
    new_anchor="${groupId}:${artifactId}"
    [[ "${new_anchor}" != "${anchor}" ]] && echo "${lastbuildspec}"
    anchor="${new_anchor}"
    lastbuildspec="${buildspec}"
  done
  echo "${lastbuildspec}"
)
do
  . ${bs}

  # extract last release from maven-metadata.xml
  echo -n "checking for release of ${groupId}:${artifactId} newer than ${version}"
  groupDir=$(echo ${groupId} | tr '.' '/')
  mavenMetadata=`dirname ${bs}`/buildcache/${artifactId}-maven-metadata.xml
  [ -d `dirname ${mavenMetadata}` ] || mkdir `dirname ${mavenMetadata}`
  centralMetadata="https://repo.maven.apache.org/maven2/${groupDir}/${artifactId}/maven-metadata.xml"
  cache=$(date -d 'now - 1 days' +%s)
  [[ -f ${mavenMetadata} ]] && file_time=$(date -r "${mavenMetadata}" +%s) || file_time=0
  if (( file_time <= cache )); then
    curl -s --fail ${centralMetadata} --output ${mavenMetadata}
    if [[ $? != 0 ]]
    then
      echo ": cannot find ${centralMetadata}"
      echo "=> TODO fix groupId and artifactId in ${bs}"
      continue
    fi
  fi
  latest=`grep '<release>' ${mavenMetadata} | sed -e 's/.*>\(.*\)<.*/\1/g'`
  dir=`dirname ${bs}`
  file=`basename ${bs} -${version}.buildspec`
  latestBuildspec=${dir}/${file}-${latest}.buildspec
  [ -f ${latestBuildspec} ] && latest="${version}"


  if [[ "" == "${latest}" ]]
  then
    echo ": can't find latest in ${mavenMetadata}"
    cat ${mavenMetadata}
  elif [[ "${version}" == "${latest}" ]]
  then
    echo -ne "\r\e[2K"
  else
    echo ": found ${latest}"
    # new release, create a new buildspec
    echo "=> TODO create buildspec for ${latest} from ${version}: run ./add-new-release.sh ${bs} ${latest}"
  fi
done
