#!/bin/bash

cat <(echo "| groupId | artifactId version | build | env | Reproduce |"
echo "| ------- | ------------------ | ----- | --- | ---------- |"

for buildspec in `find content -name *.buildspec -print | sort`
do
  . $buildspec

  groupDir=$(echo ${groupId} | tr '.' '/')
  buildinfo="`dirname ${buildspec}`/`basename ${buildinfo}`"

  echo -n "| [${groupId}](https://repo.maven.apache.org/maven2/${groupDir}) "
  echo -n "| [${artifactId}](https://repo.maven.apache.org/maven2/${groupDir}/${artifactId}) "
  echo -n "[${version}](https://repo.maven.apache.org/maven2/${groupDir}/${artifactId}/${version}) "
  echo -n "| [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/${buildspec}) "
  [ -f ${buildinfo} ] && echo -n "/ [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/${buildinfo}) "
  echo -n "| ${tool} jdk-${jdk} "
  [ "${newline}" == "crlf" ] && echo -n "win "

  . ${buildinfo}.compare
  if [ $? -eq 0 ]; then
    echo -n "| "
    [ ${ok} -gt 0 ] && echo -n "${ok} :heavy_check_mark: "
    [ ${ko} -gt 0 ] && echo -n " ${ko} [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/${buildinfo}.compare) "
  else
    echo -n "| :x: "
  fi
  echo "|"

done) > summary-table.md

lead='^<!-- BEGIN GENERATED CONTENT -->$'
tail='^<!-- END GENERATED CONTENT -->$'
sed -e "/$lead/,/$tail/{ /$lead/{p; r summary-table.md
        }; /$tail/p; d }" README.md > README.md.tmp

mv README.md.tmp README.md

rm summary-table.md
