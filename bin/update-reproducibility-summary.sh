#!/bin/bash

echo "*** running script: $0"

export LC_ALL=C
[ -d tmp ] || mkdir tmp

globalVersion=0
globalVersionOk=0
countGa=0
summary="tmp/summary-table.md"
echo "| [Central Repository](https://central.sonatype.com/) groupId | artifactId(s) | versions | [result](https://reproducible-builds.org/docs/jvm/): reproducible? |" > ${summary}
echo "| ----------------- | --------------- | --------- | -------- |" >> ${summary}
prevGroupId=
stats="tmp/stats.txt"
echo -n > $stats

for m in `find content -name "maven-metadata.xml" -print | grep -v buildcache | sed 's_/maven-metadata.xml__'`
do
  echo "${m##*/} ${m%/*}"
done | sort -k 2 | while read -r p ; do echo "${p##* }/${p% *}/maven-metadata.xml"; done > maven-metadata
for metadata in `cat maven-metadata`
do
  groupId=$(cat "${metadata}" | grep 'groupId>' | cut -d '>' -f 2 | cut -d '<' -f 1)
  artifactId=$(cat "${metadata}" | grep 'artifactId>' | cut -d '>' -f 2 | cut -d '<' -f 1)
  curl -s --fail https://repo.maven.apache.org/maven2/$(echo ${groupId} | tr '.' '/')/${artifactId}/maven-metadata.xml --output ${metadata}

  dir="$(dirname "${metadata}")"
  projectReadme="${dir}/README.md"
  \rm -f ${projectReadme}
  mkdir -p tmp/${dir}
  echo -n > tmp/${projectReadme}

  countVersion=0
  countVersionOk=0

  # detect first version that has a buildspec
  firstVersion=
  for version in $(cat "${metadata}" | grep 'version>' | cut -d '>' -f 2 | cut -d '<' -f 1)
  do
    if [ -n "$(ls $dir | grep "\-${version}\.buildspec")" ]
    then
      firstVersion="$version"
      break
    fi
  done

  for version in $(tac "${metadata}" | grep 'version>' | cut -d '>' -f 2 | cut -d '<' -f 1)
  do
    buildspec=$(ls $dir | grep "\-${version}\.buildspec")
    _buildinfo=$(ls $dir | grep "\-${version}\.buildinfo")
    buildcompare=$(ls $dir | grep "\-${version}\.buildcompare")

    if [ -n "$buildspec" ]
    then
      # reset recent fields added to buildspec, to avoid rework of older specs
      diffoscope=
      issue=
      . $dir/${buildspec}
      printf "%-9s %3d\n" ${tool} ${jdk} >> $stats
      if [ ! -f "${projectReadme}" ]
      then
        ((countGa++))
        # prepare README.md intro
        echo "[$groupId:$artifactId](https://central.sonatype.com/artifact/${groupId}/${artifactId}/${version}/versions) RB check" > ${projectReadme}
        echo "=======" >> ${projectReadme}
        echo >> ${projectReadme}
        echo "[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)" >> ${projectReadme}
        echo >> ${projectReadme}
        echo "## Project: [$groupId:$artifactId](https://central.sonatype.com/artifact/${groupId}/${artifactId}/${version}/versions)" >> ${projectReadme}
        echo >> ${projectReadme}
        echo "Source code: [$gitRepo]($gitRepo)" >> ${projectReadme}
        echo >> ${projectReadme}

        projectGa=$(cat $dir/*.buildinfo | grep coordinates | cut -d = -f 2 | sort -u | wc -l)
        if [ $projectGa -gt 1 ]
        then
          echo "<details><summary>This project defines $projectGa modules:</summary>" >> ${projectReadme}
          echo >> ${projectReadme}
          for ga in $(cat $dir/*.buildinfo | grep coordinates | cut -d = -f 2 | sort -u)
          do
            gaDir=$(echo "$ga" | sed -e 's_:_/_')
            echo "* [$ga](https://central.sonatype.com/artifact/${gaDir}/${version})" >> ${projectReadme}
          done
          echo "</details>" >> ${projectReadme}
          echo >> ${projectReadme}
        fi
      fi
      # add buildspec result to tmp
      ((countVersion++))
      ((globalVersion++))

      echo -n "| [${version}](https://central.sonatype.com/artifact/${groupId}/${artifactId}/${version}/pom) " >> tmp/${projectReadme}
      echo -n "| [$(echo "${tool}"  | cut -d - -f 1)" >> tmp/${projectReadme}
      [[ "${tool}" == "gradle" ]] || echo -n " jdk${jdk}" >> tmp/${projectReadme} # chosen JDK is used only to launch Gradle, not build code, then not relevant
      [[ "${newline}" == crlf* ]] && echo -n " w" >> tmp/${projectReadme}
      echo -n "](${buildspec}) | " >> tmp/${projectReadme}
      [ -f "${dir}/${_buildinfo}" ] && echo -n "[result](${_buildinfo}): " >> tmp/${projectReadme}

      . "${dir}/${buildcompare}"
      if [ $? -eq 0 ]; then
        echo -n "[" >> tmp/${projectReadme}
        [ "${ok}" -gt 0 ] && echo -n "${ok} :heavy_check_mark: " >> tmp/${projectReadme}
        [ "${ko}" -gt 0 ] && echo -n " ${ko} :warning:" >> tmp/${projectReadme} || ((countVersionOk++))
        [ "${ko}" -gt 0 ] || ((globalVersionOk++))
        echo -n "](${buildcompare})" >> tmp/${projectReadme}
        [[ -z "${diffoscope}" ]] || echo -n " [:mag:](${diffoscope})" >> tmp/${projectReadme}
        [[ -z "${issue}" ]] || echo -n " [:memo:](${issue})" >> tmp/${projectReadme}

        # detect unexpected issue or diffoscope but 0 non-reproducible artifact (probably cause by previous buildspec copy)
        [[ -z "${issue}" ]] && [[ -n "${diffoscope}" ]] && issue="${diffoscope}"
        [[ -n "${issue}" ]] && [ "${ko}" -eq 0 ] && echo -e "\n\033[1;31munexpected issue/diffoscope entry when ko=0\033[0m in \033[1m$dir/$buildspec\033[0m" >> tmp/${projectReadme}
      else
        echo -n ":x:" >> tmp/${projectReadme}
      fi
      echo " | $(grep length= ${dir}/${_buildinfo} | cut -d = -f 2 | paste -sd+ - | bc | numfmt --to=iec) |" >> tmp/${projectReadme}
    else
      # no buildspec, just list version to tmp
      echo "| [${version}](https://central.sonatype.com/artifact/${groupId}/${artifactId}/${version}/pom) | | | |" >> "tmp/${projectReadme}"
    fi
    # don't continue if it's the first version with buildspec
    [[ "$firstVersion" == "$version" ]] && break
  done

  echo "rebuilding **${countVersion} releases** of ${groupId}:${artifactId}:" >> ${projectReadme}
  echo "- **${countVersionOk}** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:)," >> ${projectReadme}
  echo "- $((countVersion - countVersionOk)) had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):" >> ${projectReadme}
  echo >> ${projectReadme}
  echo "| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |" >> ${projectReadme}
  echo "| -- | --------- | ------ | -- |" >> ${projectReadme}
  cat tmp/${projectReadme} >> "${projectReadme}"
  echo >> "${projectReadme}"
  echo "<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>" >> "${projectReadme}"

  # add projet entry to main README
  echo -n "|" >> ${summary}
  [[ "$groupId" != "$prevGroupId" ]] && prevGroupId="$groupId" && echo -n " ${groupId}" >> ${summary}
  echo -n " | <a name='${groupId}:${artifactId}'></a>" >> ${summary}
  if [ "$artifactId" == "$groupId" ]
  then
    echo -n "[${artifactId}]" >> ${summary}
  else
    echo -n "[${artifactId}]" | sed -e "s/$groupId/*/" >> ${summary}
  fi
  echo -n "(${dir}/README.md) | ${countVersion} | " >> ${summary}
  if [ "${countVersionOk}" == "0" ]
  then
    echo -n "$((countVersion)) :warning:" >> ${summary}
  else
    echo -n "${countVersionOk} :heavy_check_mark:" >> ${summary}
    [ "${countVersion}" -gt "${countVersionOk}" ] && echo -n " / $((countVersion - countVersionOk)) :warning:" >> ${summary}
  fi
  echo " |" >> ${summary}
done

echo "| **Count:** | **${countGa}** | **${globalVersion}** | **${globalVersionOk}** :heavy_check_mark: **$((globalVersion - globalVersionOk))** :warning: |" >> ${summary}

echo "   rebuilding **${globalVersion} releases** of **${countGa} projects**:" > tmp/summary-intro.md
echo "   - **${globalVersionOk}** releases are confirmed **fully reproducible** (100% reproducible artifacts :heavy_check_mark:)," >> tmp/summary-intro.md
echo "   - $((globalVersion - globalVersionOk)) releases are only partially reproducible (contain some unreproducible artifacts :warning:)" >> tmp/summary-intro.md
echo >> tmp/summary-intro.md

sort $stats | uniq -c > tmp/stats.md

lead='^<!-- BEGIN GENERATED RESULTS TABLE -->$'
tail='^<!-- END GENERATED RESULTS TABLE -->$'
lead_intro='^   <!-- BEGIN GENERATED INTRO -->$'
tail_intro='^<!-- END GENERATED INTRO -->$'
lead_stats='^<!-- BEGIN GENERATED STATS -->$'
tail_stats='^<!-- END GENERATED STATS -->$'
sed -e "/$lead/,/$tail/{ /$lead/{p; r tmp/summary-table.md
        }; /$tail/p; d }" README.md | \
    sed -e "/$lead_intro/,/$tail_intro/{ /$lead_intro/{p; r tmp/summary-intro.md
        }; /$tail_intro/p; d }" | \
    sed -e "/$lead_stats/,/$tail_stats/{ /$lead_stats/{p; r tmp/stats.md
        }; /$tail_stats/p; d }" > tmp/README.md

cp tmp/README.md README.md

\rm -rf tmp

if grep "unexpected issue" README.md; then
  echo "Uh oh, found 'unexpected issue' in README.md."
  exit 1
else
  echo "All appears well, no 'unexpected issue' in README.md"
fi
