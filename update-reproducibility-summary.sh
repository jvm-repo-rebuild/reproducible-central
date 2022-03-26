#!/bin/bash

echo "*** running script: $0"

export LC_ALL=C

globalVersion=0
globalVersionOk=0
countGa=0
summary="summary-table.md"
echo "| [Central Repository](https://search.maven.org/) groupId | artifactId(s) | versions | [result](https://reproducible-builds.org/docs/jvm/): reproducible? |" > ${summary}
echo "| ----------------- | --------------- | --------- | -------- |" >> ${summary}
prevGroupId=

for metadata in $(find content -name "maven-metadata.xml" -print | grep -v buildcache | sort)
do
  dir="$(dirname "${metadata}")"
  readme="${dir}/README.md"
  \rm -f $readme

  t="${readme}.tmp"
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
    buildinfo=$(ls $dir | grep "\-${version}\.buildinfo")
    buildcompare=$(ls $dir | grep "\-${version}\.buildcompare")

    if [ -n "$buildspec" ]
    then
      # reset recent fields added to buildspec, to avoid rework of older specs
      diffoscope=
      issue=
      . $dir/${buildspec}
      if [ ! -f "${readme}" ]
      then
        ((countGa++))
        # prepare README.md intro
        echo "[$groupId:$artifactId](https://search.maven.org/artifact/${groupId}/${artifactId}/) RB check" > $readme
        echo "=======" >> $readme
        echo >> $readme
        echo "[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)" >> $readme
        echo >> $readme
        echo "## Project: [$groupId:$artifactId](https://search.maven.org/artifact/${groupId}/${artifactId}/)" >> $readme
        echo >> $readme
        echo "Source code: [$gitRepo]($gitRepo)" >> $readme
        echo >> $readme
      fi
      # add buildspec result to tmp
      ((countVersion++))
      ((globalVersion++))

      echo -n "| [${version}](https://search.maven.org/artifact/${groupId}/${artifactId}/${version}/pom) " >> ${t}
      echo -n "| [${tool} jdk${jdk}" >> ${t}
      [[ "${newline}" == crlf* ]] && echo -n " w" >> ${t}
      echo -n "](${buildspec}) | " >> ${t}
      [ -f "${buildinfo}" ] && echo -n "[result](${buildinfo}): " >> ${t}

      . "${dir}/${buildcompare}"
      if [ $? -eq 0 ]; then
        echo -n "[" >> ${t}
        [ "${ok}" -gt 0 ] && echo -n "${ok} :heavy_check_mark: " >> ${t}
        [ "${ko}" -gt 0 ] && echo -n " ${ko} :warning:" >> ${t} || ((countVersionOk++)) && ((globalVersionOk++))
        echo -n "](${buildcompare})" >> ${t}
        [[ -z "${diffoscope}" ]] || echo -n " [:mag:](${diffoscope})" >> ${t}
        [[ -z "${issue}" ]] || echo -n " [:memo:](${issue})" >> ${t}

        # detect unexpected issue or diffoscope but 0 non-reproducible artifact (probably cause by previous buildspec copy)
        [[ -z "${issue}" ]] && [[ -n "${diffoscope}" ]] && issue="${diffoscope}"
        [[ -n "${issue}" ]] && [ "${ko}" -eq 0 ] && echo -e "\n\033[1;31munexpected issue/diffoscope entry when ko=0\033[0m in \033[1m$dir/$buildspec\033[0m" >> ${t}
      else
        echo -n ":x:" >> ${t}
      fi
      echo " |" >> ${t}
    else
      # no buildspec, just list version to tmp
      echo "| [${version}](https://search.maven.org/artifact/${groupId}/${artifactId}/${version}/pom) | | |" >> "${t}"
    fi
    # don't continue if it's the first version with buildspec
    [[ "$firstVersion" == "$version" ]] && break
  done

  echo "rebuilding **${countVersion} releases** of ${groupId}:${artifactId}:" >> $readme
  echo "- **${countVersionOk}** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:)," >> $readme
  echo "- $((countVersion - countVersionOk)) had issues (some unreproducible artifacts :warning:):" >> $readme
  echo >> $readme
  echo "| version | [build spec](BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? |" >> $readme
  echo "| -- | --------- | ------ |" >> $readme
  cat ${t} >> "${readme}"
  \rm -f ${t}

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
  echo -n "(${dir}/README.md) | ${countVersion} | ${countVersionOk} :heavy_check_mark:" >> ${summary}
  [ "${countVersion}" -gt "${countVersionOk}" ] && echo -n " / $((countVersion - countVersionOk)) :warning:" >> ${summary}
  echo " |" >> ${summary}
done

echo "| **Count:** | **${countGa}** | **${globalVersion}** | **${globalVersionOk}** :heavy_check_mark: **$((globalVersion - globalVersionOk))** :warning: |" >> ${summary}

echo "rebuilding **${globalVersion} releases** of **${countGa} projects**:" > summary-intro.md
echo "- **${globalVersionOk}** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:)," >> summary-intro.md
echo "- $((globalVersion - globalVersionOk)) had issues (some unreproducible artifacts :warning:):" >> summary-intro.md
echo >> summary-intro.md

lead='^<!-- BEGIN GENERATED RESULTS TABLE -->$'
tail='^<!-- END GENERATED RESULTS TABLE -->$'
lead_intro='^<!-- BEGIN GENERATED INTRO -->$'
tail_intro='^<!-- END GENERATED INTRO -->$'
sed -e "/$lead/,/$tail/{ /$lead/{p; r summary-table.md
        }; /$tail/p; d }" README.md | \
    sed -e "/$lead_intro/,/$tail_intro/{ /$lead_intro/{p; r summary-intro.md
        }; /$tail_intro/p; d }" > README.md.tmp

mv README.md.tmp README.md

rm summary-intro.md
rm summary-table.md

if grep "unexpected issue" README.md; then
  echo "Uh oh, found 'unexpected issue' in README.md."
  exit 1
else
  echo "All appears well, no 'unexpected issue' in README.md"
fi
