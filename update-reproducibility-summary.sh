#!/bin/bash

cat <(echo "| [Central Repository](https://search.maven.org/) groupId:artifactId(s) | version | [build spec](BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? |"
echo "| -------------------------------- | -- | --------- | ------ |"

anchor="empty"
countGa=0
countVersion=0

for buildspec in `find content -name *.buildspec -print | sort`
do
  ((countVersion++))
  . $buildspec
  new_anchor="${groupId}:${artifactId}"

  buildinfo="`dirname ${buildspec}`/`basename ${buildinfo}`"
  if [ `ls ${buildinfo} | wc -l` -le 1 ]; then
    buildinfoCompare="${buildinfo}.compare"
  else
    buildinfoCompare="`dirname ${buildspec}`/`basename ${buildspec} .buildspec`.buildinfo.compare"
  fi

  echo -n "| "
  [[ "${new_anchor}" != "${anchor}" ]] && echo -n "<a name='${new_anchor}'></a>[${display}](https://search.maven.org/artifact/${groupId}/${artifactId}) " && ((countGa++))
  anchor="${new_anchor}"
  echo -n "| [${version}](https://search.maven.org/artifact/${groupId}/${artifactId}/${version}/pom) "
  echo -n "| [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/${buildspec}): "
  echo -n "[:notebook:](${gitRepo}) "
  echo -n "${tool} j${jdk} "
  [[ "${newline}" == crlf* ]] && echo -n "w "
  echo -n "| "
  [ -f "${buildinfo}" ] && echo -n "[result](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/${buildinfo}): "

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

done

echo "| **Count: ${countGa}** | **${countVersion}** | | |"
) > summary-table.md

lead='^<!-- BEGIN GENERATED CONTENT -->$'
tail='^<!-- END GENERATED CONTENT -->$'
sed -e "/$lead/,/$tail/{ /$lead/{p; r summary-table.md
        }; /$tail/p; d }" README.md > README.md.tmp

mv README.md.tmp README.md

rm summary-table.md
