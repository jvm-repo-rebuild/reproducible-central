#!/bin/bash

echo "*** running script: $0"

export LC_ALL=C
[ -d tmp ] || mkdir tmp

tac="tac"
numfmt="numfmt"
if [ "$(uname -s)" ==  "Darwin" ]
then
  tac="tail -r"
  numfmt="gnumfmt"
fi

globalVersion=0
globalVersionOk=0
countGa=0
countGaOk=0
summary="tmp/summary-table.md"
echo "| [Central Repository](https://central.sonatype.com/) groupId | artifactId(s) | versions | [result](https://reproducible-builds.org/docs/jvm/): reproducible? |" > ${summary}
echo "| ----------------- | --------------- | --------- | -------- |" >> ${summary}
prevGroupId=
stats="tmp/stats.txt"
echo -n > $stats
echo -n > tmp/unexpected-diffoscope.txt

# use content of "ignore" file to skip some versions
function keepVersion() {
  local dir=$1
  local version=$2
  if [ -f $dir/ignore ]
  then
    while IFS= read -r line
    do
      if [ "$line" == "$version" ]
      then
        return 1
      fi
    done < $dir/ignore
  fi
  return 0
}

for m in `find content -name "maven-metadata.xml" -print | grep -v buildcache | sed 's_/maven-metadata.xml__'`
do
  echo "${m##*/} ${m%/*}"
done | sort -k 2 | while read -r p ; do echo "${p##* }/${p% *}/maven-metadata.xml"; done > maven-metadata
wc -l maven-metadata

for metadata in `cat maven-metadata`
do
  dir="$(dirname "${metadata}")" && [ -z "$1" ] && echo "$dir"
  groupId=$(cat "${metadata}" | grep 'groupId>' | cut -d '>' -f 2 | cut -d '<' -f 1)
  artifactId=$(cat "${metadata}" | grep 'artifactId>' | cut -d '>' -f 2 | cut -d '<' -f 1)

  # update maven-metadata.xml with content from Maven Central
  [ "$1" == "update" ] && curl -s --fail https://repo.maven.apache.org/maven2/$(echo ${groupId} | tr '.' '/')/${artifactId}/maven-metadata.xml --output ${metadata}

  #
  # render project's README.md with results for every release
  #
  projectReadme="${dir}/README.md"
  \rm -f ${projectReadme}
  projectBadge="${dir}/badge.json"
  \rm -f ${projectBadge}
  mkdir -p tmp/${dir}
  echo -n > tmp/${projectReadme}

  countVersion=0
  countVersionOk=0
  countMissingBuildspec=0
  missingBuildspec=""

  # detect oldest version with buildspec, to stop reporting
  oldestBuildspecVersion=
  for version in $(cat "${metadata}" | grep 'version>' | cut -d '>' -f 2 | cut -d '<' -f 1)
  do
    if [ -n "$(ls $dir | grep "\-${version}\.buildspec")" ]
    then
      oldestBuildspecVersion="$version"
      break
    fi
  done

  highestVersion= # highest non-ignored version, with or without buildspec
  for version in $($tac "${metadata}" | grep 'version>' | cut -d '>' -f 2 | cut -d '<' -f 1)
  do
    # report only on non-ignored versions
    keepVersion $dir $version || continue
    [ -z "$highestVersion" ] && highestVersion=$version

    buildspec=$(ls $dir | grep "\-${version}\.buildspec")
    _buildinfo=$(ls $dir | grep "\-${version}\.buildinfo")
    buildcompare=$(ls $dir | grep "\-${version}\.buildcompare")

    if [ -n "$buildspec" ]
    then
      # reset recent fields added to buildspec, to avoid rework of older specs
      diffoscope=
      issue=
      os=
      arch=
      . $dir/${buildspec}
      printf "%-9s  %2s\n" ${tool} ${jdk} >> $stats
      if [ ! -f "${projectReadme}" ]
      then
        ((countGa++))
        # prepare README.md intro
        echo "[$groupId:$artifactId](https://central.sonatype.com/artifact/${groupId}/${artifactId}/versions) RB check" > ${projectReadme}
        echo "=======" >> ${projectReadme}
        echo >> ${projectReadme}
        echo "[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)" >> ${projectReadme}
        echo >> ${projectReadme}
        echo "## Project: [$groupId:$artifactId](https://central.sonatype.com/artifact/${groupId}/${artifactId}/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/$projectBadge)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/$projectReadme)" >> ${projectReadme}
        echo >> ${projectReadme}
        echo "Source code: [$gitRepo]($gitRepo)" >> ${projectReadme}
        echo >> ${projectReadme}

        projectGa="$(( $(cat $dir/*.buildinfo | grep coordinates | cut -d = -f 2 | sort -u | wc -l) ))"
        if [ $projectGa -gt 1 ]
        then
          echo "<details><summary>This project defines $projectGa modules:</summary>" >> ${projectReadme}
          echo >> ${projectReadme}
          for ga in $(cat $dir/*.buildinfo | grep coordinates | cut -d = -f 2 | sort -u)
          do
            gaDir=$(echo "$ga" | sed -e 's_:_/_')
            echo "* [$ga](https://central.sonatype.com/artifact/${gaDir}/overview)" >> ${projectReadme}
          done
          echo "</details>" >> ${projectReadme}
          echo >> ${projectReadme}
        fi
      fi
      # add buildspec result to tmp
      ((countVersion++))
      ((globalVersion++))

      row="| [${version}](https://central.sonatype.com/artifact/${groupId}/${artifactId}/${version}/pom) "
      row+="| [$(echo "${tool}"  | cut -d - -f 1)"
      row+=" jdk${jdk}"
      [[ "${newline}" == crlf* ]] && row+=" w"
      [ -n "${os}" ] && row+=" ${os}"
      [ -n "${arch}" ] && row+=" ${arch}"
      row+="](${buildspec}) | "
      [ -f "${dir}/${_buildinfo}" ] && row+="[result](${_buildinfo}): "

      if [ -f "${dir}/${buildcompare}" ]
      then
        . "${dir}/${buildcompare}"
        row+="["
        [ "${ok}" -gt 0 ] && row+="${ok} :white_check_mark: "
        [ "${ko}" -gt 0 ] && row+=" ${ko} :warning:" || ((countVersionOk++))
        [ "${ko}" -gt 0 ] || ((globalVersionOk++))
        row+="](${buildcompare})"
        [[ -z "${diffoscope}" ]] || row+=" [:mag:](${diffoscope})"
        [[ -z "${issue}" ]] || row+=" [:memo:](${issue})"

        # detect unexpected issue or diffoscope but 0 non-reproducible artifact (probably cause by previous buildspec copy)
        [[ -z "${issue}" ]] && [[ -n "${diffoscope}" ]] && issue="${diffoscope}"
        [[ -n "${issue}" ]] && [ "${ko}" -eq 0 ] && echo "      $dir/$buildspec" >> tmp/unexpected-diffoscope.txt
        row+=" | $(grep length= ${dir}/${_buildinfo} | cut -d = -f 2 | paste -sd+ - | bc | $numfmt --to=iec) |"
        echo "$row" >> tmp/${projectReadme}
      else
        echo "$row:x: | |" >> tmp/${projectReadme}
      fi
    else
      # no buildspec, just list version to tmp
      echo "| [${version}](https://central.sonatype.com/artifact/${groupId}/${artifactId}/${version}/pom) | | | |" >> "tmp/${projectReadme}"
      [ "$highestVersion" != "$version" ] && missingBuildspec+="$version " && ((countMissingBuildspec++))
    fi
    # don't continue if it's the oldest version with buildspec
    [[ "$oldestBuildspecVersion" == "$version" ]] && break
  done

  echo "rebuilding **${countVersion} releases** of ${groupId}:${artifactId}:" >> ${projectReadme}
  echo "- **${countVersionOk}** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:)," >> ${projectReadme}
  echo "- $((countVersion - countVersionOk)) had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):" >> ${projectReadme}
  echo >> ${projectReadme}
  echo "| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |" >> ${projectReadme}
  echo "| -- | --------- | ------ | -- |" >> ${projectReadme}
  cat tmp/${projectReadme} >> "${projectReadme}"
  echo >> "${projectReadme}"
  echo "<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>" >> "${projectReadme}"

  # add project entry to main README
  row="|"
  if [ "$artifactId" == "$groupId" ]
  then
    # for example com.io7m.*
    groupId="${groupId%.*}"
  fi
  [[ "$groupId" != "$prevGroupId" ]] && prevGroupId="$groupId" && row+=" ${groupId}"
  row+=" | [$(echo "${artifactId}" | sed -e "s/$groupId/*/")](${dir}/README.md)"
  row+=" | ${countVersion} | "
  if [ "${countVersionOk}" == "0" ]
  then
    row+="$((countVersion)) :warning:"
  else
    countGaOk=$((countGaOk+1))
    row+="${countVersionOk} :white_check_mark:"
    [ "${countVersion}" -gt "${countVersionOk}" ] && row+=" / $((countVersion - countVersionOk)) :warning:"
  fi
  row+=" |"
  echo "$row" >> ${summary}

  # detect newest versions that have a buildspec not to be ignored
  newestBuildspecVersion= # newest version with a buildspec
  for version in $($tac "${metadata}" | grep 'version>' | cut -d '>' -f 2 | cut -d '<' -f 1)
  do
    if [ -n "$(ls $dir | grep "\-${version}\.buildspec")" ]
    then
      newestBuildspecVersion="$version"
      break
    fi
  done
  lastUpdated="$(cat "${metadata}" | grep 'lastUpdated>' | cut -d '>' -f 2 | cut -d '<' -f 1)"

  # generate badge.json: https://shields.io/badges/endpoint-badge with newest rebuild result
  # to be used as https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/...path to project directory.../badge.json
  buildspec=$(ls $dir | grep "\-${newestBuildspecVersion}\.buildspec")
  buildcompare=$(ls $dir | grep "\-${newestBuildspecVersion}\.buildcompare")
  badgeColor="red"
  badgeMessage="X"
  . $dir/${buildspec}
  if [ -f "${dir}/${buildcompare}" ]
  then
    . "${dir}/${buildcompare}"
    badgeMessage="${ok}/$(($ok + $ko))"
    if [ "${ko}" -eq 0 ]
    then
      badgeColor="green"
    elif [ "${ko}" -lt "${ok}" ]
    then
      badgeColor="yellow"
    else
      badgeColor="red"
    fi
  fi
  echo "{ \"schemaVersion\": 1,
  \"label\": \"Reproducible Builds\",
  \"labelColor\": \"1e5b96\",
  \"message\": \"${badgeMessage}\",
  \"color\": \"${badgeColor}\",
  \"isError\": \"true\" }" > ${projectBadge}

  # prepare add command from previous version with buildspec when there is a missing buildspec, and/or list last non-reproducible build
  previousVersion="${newestBuildspecVersion}"
  addVersion="${highestVersion}" # notice: highest version may already have a buildspec
  # check previous buildspec result to display it and add to add-ok or add-ko temp file
  previousBuildspec=$(ls $dir | grep "\-${previousVersion}\.buildspec")
  previousBuildcompare=$(ls $dir | grep "\-${previousVersion}\.buildcompare")
  issue=""
  . "${dir}/${previousBuildspec}"
  rebuildStatus=":x:" && ko=99999
  if [ -f "${dir}/${previousBuildcompare}" ]
  then
    . "${dir}/${previousBuildcompare}"
    if [ $ko -eq 0 ]
    then
      rebuildStatus=":white_check_mark:"
      [ -z "$1" ] && [ $countMissingBuildspec -gt 0 ] \
                  && echo "  missing ${countMissingBuildspec}: https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/$dir/README.md" \
                  && echo "    bin/add-new-release.sh $dir/${previousBuildspec} $missingBuildspec"
      [ $countMissingBuildspec -gt 0 ] && echo "| <!-- ${lastUpdated} --> [${artifactId}](../${dir}/README.md) | [${previousVersion}](../$dir/${previousBuildspec}) $rebuildStatus" \
           "| ${missingBuildspec} | \`bin/add-new-release.sh $dir/${previousBuildspec} ...\` |" >> tmp/add-ok.md # only when ok for now
    elif [ -z "$issue" ]
    then
      rebuildStatus=":warning:"
    else
      rebuildStatus=":warning: [:memo:]($issue)"
    fi
  fi
  # if add release has to happen, prepare add-new-release instructions
  if [ "${addVersion}" != "${previousVersion}" ]
  then
    addBuildspec="${dir}/$(basename ${previousBuildspec} -${previousVersion}.buildspec)-${addVersion}.buildspec"
    rebuildOk="ok" && [ $ko -gt 0 ] && rebuildOk="ko"
    echo "| <!-- ${lastUpdated} --> [${artifactId}](../${dir}/README.md) | [${previousVersion}](../$dir/${previousBuildspec}) $rebuildStatus" \
         "| [${addVersion}](../$addBuildspec) | \`bin/add-new-release.sh $dir/${previousBuildspec} ${addVersion}\` |" >> tmp/add-${rebuildOk}.md
  else
    # no release already exists, list it if it was not reproducible: it requires rework to prepare next release
    if [ ! -f "${dir}/${previousBuildcompare}" ] || [ $ko -ne 0 ]
    then
      echo "| <!-- ${lastUpdated} --> [${artifactId}](../${dir}/README.md) | ${previousVersion} $rebuildStatus |" >> tmp/newest-not-reproducible.md
    fi
  fi

  # detect new release in Apache Staging
  if [[ ${groupId} == org.apache* ]]
  then
    curl -s --fail  https://repository.apache.org/content/repositories/staging/$(echo ${groupId} | tr '.' '/')/${artifactId}/maven-metadata.xml --output ${metadata}-staging
    latestStaging=
    for version in $($tac "${metadata}-staging" | grep 'version>' | cut -d '>' -f 2 | cut -d '<' -f 1)
    do
      [ -z "$latestStaging" ] && keepVersion $dir $version && latestStaging=$version
      if [ -n "$(ls $dir | grep "\-${version}\.buildspec")" ]
      then
        break
      fi
    done
    rm ${metadata}-staging
    # if Apache staging contains a new release candidate, prepare add-release-candidate instructions
    if [ -z "${latestStaging}" ] || [ "${latestStaging}" == "${highestVersion}" ]
    then
      # no new release: skip
      continue
    fi

    stagingBuildspec="${dir}/$(basename ${previousBuildspec} -${previousVersion}.buildspec)-${latestStaging}.buildspec"
    stagingBuildcompareDesc=
    if [ -f "$stagingBuildspec" ]
    then
      # reset recent fields added to buildspec, to avoid rework of older specs
      diffoscope=
      issue=
      . ${stagingBuildspec}
      stagingBuildcompare=$(ls $dir | grep "\-${latestStaging}\.buildcompare")
      if [ -f "${dir}/${stagingBuildcompare}" ]
      then
        . "${dir}/${stagingBuildcompare}"
        stagingBuildcompareDesc="["
        [ "${ok}" -gt 0 ] && stagingBuildcompareDesc+="${ok} :white_check_mark: "
        [ "${ko}" -gt 0 ] && stagingBuildcompareDesc+=" ${ko} :warning:"
        stagingBuildcompareDesc+="](../${dir}/${stagingBuildcompare})"
        [[ -z "${diffoscope}" ]] || stagingBuildcompareDesc+=" [:mag:](../${dir}/${diffoscope})"
        [[ -z "${issue}" ]] || stagingBuildcompareDesc+=" [:memo:](${issue})"
      else
        stagingBuildcompareDesc=":x:"
      fi
    fi

    tlp="$(echo $groupId | sed 's/^org.apache.\([^.]*\).*$/\1/')"
    mailbox="[:mailbox:](https://lists.apache.org/list?dev@$tlp.apache.org:lte=1M:VOTE)"

    echo "| <!-- ${lastUpdated} --> $mailbox | [${artifactId}](../${dir}/README.md) | [${previousVersion}](../$dir/${previousBuildspec}) $rebuildStatus" \
         "| [${latestStaging}](../$stagingBuildspec) $stagingBuildcompareDesc | \`bin/add-new-release.sh $dir/${previousBuildspec} ${latestStaging} staging\` |" >> tmp/add-staging.md
  fi
done

echo "| **Count:** | **${countGa}** | **${globalVersion}** | **${globalVersionOk}** :white_check_mark: **$((globalVersion - globalVersionOk))** :warning: |" >> ${summary}

echo "   rebuilding **${globalVersion} releases** of **${countGa} projects**:" > tmp/summary-intro.md
echo "   - **${globalVersionOk}** releases are confirmed **fully reproducible** (100% reproducible artifacts :white_check_mark:)," >> tmp/summary-intro.md
echo "   - $((globalVersion - globalVersionOk)) releases are only partially reproducible (contain some unreproducible artifacts :warning:)" >> tmp/summary-intro.md
echo "   - on ${countGa} projects, ${countGaOk} have at least one fully reproducible release, $((countGa - countGaOk)) have none" >> tmp/summary-intro.md
echo >> tmp/summary-intro.md

echo "\`\`\`" > tmp/stats.md
sort $stats | uniq -c >> tmp/stats.md
echo "\`\`\`" >> tmp/stats.md

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

echo "| artifactId | from | to | command |" > tmp/add-ok-table.md
echo "| ---------- | ---- | -- | ------- |" >> tmp/add-ok-table.md
[ -f tmp/add-ok.md ] && sort -r tmp/add-ok.md >> tmp/add-ok-table.md
echo "|    | artifactId | from | to | command |" > tmp/add-staging-table.md
echo "| -- | ---------- | ---- | -- | ------- |" >> tmp/add-staging-table.md
[ -f tmp/add-staging.md ] && sort -r tmp/add-staging.md >> tmp/add-staging-table.md
echo "| artifactId | from | to | command |" > tmp/add-ko-table.md
echo "| ---------- | ---- | -- | ------- |" >> tmp/add-ko-table.md
[ -f tmp/add-ko.md ] && sort -r tmp/add-ko.md >> tmp/add-ko-table.md
echo "| artifactId | newest |" > tmp/newest-not-reproducible-table.md
echo "| ---------- | ------ |" >> tmp/newest-not-reproducible-table.md
sort -r tmp/newest-not-reproducible.md >> tmp/newest-not-reproducible-table.md
lead='^<!-- BEGIN GENERATED ADD OK -->$'
tail='^<!-- END GENERATED ADD OK -->$'
lead_diffoscope='^<!-- BEGIN GENERATED UNEXPECTED DIFFOSCOPE -->$'
tail_diffoscope='^<!-- END GENERATED UNEXPECTED DIFFOSCOPE -->$'
lead_staging='^<!-- BEGIN GENERATED ADD STAGING -->$'
tail_staging='^<!-- END GENERATED ADD STAGING -->$'
lead_ko='^<!-- BEGIN GENERATED ADD KO -->$'
tail_ko='^<!-- END GENERATED ADD KO -->$'
lead_newest='^<!-- BEGIN GENERATED NEWEST NOT REPRODUCIBLE -->$'
tail_newest='^<!-- END GENERATED NEWEST NOT REPRODUCIBLE -->$'
sed -e "/$lead/,/$tail/{ /$lead/{p; r tmp/add-ok-table.md
        }; /$tail/p; d }" doc/add.md | \
    sed -e "/$lead_diffoscope/,/$tail_diffoscope/{ /$lead_diffoscope/{p; r tmp/unexpected-diffoscope.txt
        }; /$tail_diffoscope/p; d }" | \
    sed -e "/$lead_staging/,/$tail_staging/{ /$lead_staging/{p; r tmp/add-staging-table.md
        }; /$tail_staging/p; d }" | \
    sed -e "/$lead_ko/,/$tail_ko/{ /$lead_ko/{p; r tmp/add-ko-table.md
        }; /$tail_ko/p; d }" | \
    sed -e "/$lead_newest/,/$tail_newest/{ /$lead_newest/{p; r tmp/newest-not-reproducible-table.md
        }; /$tail_newest/p; d }" >> tmp/add.md
cp tmp/add.md doc/add.md

\rm -rf tmp

if grep "unexpected issue" README.md; then
  echo "Uh oh, found 'unexpected issue' in README.md."
  exit 1
else
  echo "All appears well, no 'unexpected issue' in README.md"
fi
