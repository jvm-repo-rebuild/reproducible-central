#!/bin/bash

cat <(echo "| [Central Repository](https://search.maven.org/) groupId:artifactId(s):version | [build spec](BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducibility |"
echo "| -------------------------------- | --------- | ------ |"

for buildspec in `find content -name *.buildspec -print | sort`
do
  . $buildspec

  buildinfo="`dirname ${buildspec}`/`basename ${buildinfo}`"
  if [ `ls ${buildinfo} | wc -l` -le 1 ]; then
    buildinfoCompare="${buildinfo}.compare"
  else
    buildinfoCompare="`dirname ${buildspec}`/`basename ${buildspec} .buildspec`.buildinfo.compare"
  fi

  echo -n "| ${groupId}:${artifactId}:"
  echo -n "[${version}](https://search.maven.org/artifact/${groupId}/${artifactId}/${version}/pom) "
  echo -n "| [buildspec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/${buildspec}): "
  echo -n "[:notebook:](${gitRepo}) "
  echo -n "${tool} jdk-${jdk} "
  [ "${newline}" == "crlf" ] && echo -n "win "
  echo -n "| "
  [ -f "${buildinfo}" ] && echo -n "[buildinfo](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/${buildinfo}): "

  . ${buildinfoCompare}
  if [ $? -eq 0 ]; then
    echo -n "["
    [ ${ok} -gt 0 ] && echo -n "${ok} :heavy_check_mark: "
    [ ${ko} -gt 0 ] && echo -n " ${ko} :warning:"
    echo -n "](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/${buildinfoCompare}) "
  else
    echo -n ":x: "
  fi
  echo "|"

done) > summary-table.md

lead='^<!-- BEGIN GENERATED CONTENT -->$'
tail='^<!-- END GENERATED CONTENT -->$'
sed -e "/$lead/,/$tail/{ /$lead/{p; r summary-table.md
        }; /$tail/p; d }" README.md > README.md.tmp

mv README.md.tmp README.md

rm summary-table.md
