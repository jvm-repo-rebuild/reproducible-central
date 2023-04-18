#!/bin/bash

date="date"
if [ "$(uname -s)" ==  "Darwin" ]
then
  command -v gdate >/dev/null 2>&1 || { echo "require GNU date: brew install coreutils.  Aborting."; exit 1; }
  date="gdate"
fi

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
  . $(dirname $bs)/$(basename $buildinfo .buildinfo)".buildcompare"

  # extract last release from maven-metadata.xml
  groupDir=$(echo ${groupId} | tr '.' '/')
  mavenMetadata=`dirname ${bs}`/maven-metadata.xml
  [ -d `dirname ${mavenMetadata}` ] || mkdir `dirname ${mavenMetadata}`
  centralMetadata="https://repo.maven.apache.org/maven2/${groupDir}/${artifactId}/maven-metadata.xml"
  cache=$(${date} -d 'now - 1 days' +%s)
  [[ -f ${mavenMetadata} ]] && file_time=$(${date} -r "${mavenMetadata}" +%s) || file_time=0
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
    echo -ne "\r\033[2K"
  else
    echo "${groupId}:${artifactId} found ${latest} newer than ${version}"
    if [ $ko -gt 0 ]
    then
      echo -ne "   ok=$ok \033[31;1mko=$ko\033[0m"
    else
      echo -ne "   \033[32;1mok=$ok\033[0m ko=$ko"
    fi
    echo " tool=$tool jdk=$jdk newline=$newline https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/$(dirname $bs)/README.md"
    # new release, create a new buildspec
    echo -e "\033[1mbin/add-new-release.sh ${bs} ${latest}\033[0m"
    echo
  fi
done
