#!/bin/bash

echo "*** running script: $0"

. bin/includes/update-prepare.sh
echo -n > $unexpectedDiffoscope
echo -n > $stats

globalVersion=0
globalVersionOk=0
countGa=0
countGaOk=0
summary="tmp/summary-table.md"
echo "| [Central Repository](https://central.sonatype.com/) groupId | artifactId(s) | versions | [result](https://reproducible-builds.org/docs/jvm/): reproducible? |" > ${summary}
echo "| ----------------- | --------------- | --------- | -------- |" >> ${summary}
prevGroupId=

for m in `find content -name "maven-metadata.xml" -print | grep -v buildcache | sed 's_/maven-metadata.xml__'`
do
  echo "${m##*/} ${m%/*}"
done | sort -k 2 | while read -r p ; do echo "${p##* }/${p% *}/maven-metadata.xml"; done > maven-metadata
count="$(wc -l maven-metadata | cut -d ' ' -f 1)"

\rm -f "doc/add-ok.txt"

for metadata in `cat maven-metadata`
do
  ((countGa++))
  dir="$(dirname "${metadata}")" && [ -z "$1" ] && echo "$(printf "%4d" $countGa) / $count: $dir"
  groupId=$(cat "${metadata}" | grep 'groupId>' | cut -d '>' -f 2 | cut -d '<' -f 1)
  artifactId=$(cat "${metadata}" | grep 'artifactId>' | cut -d '>' -f 2 | cut -d '<' -f 1)

  # update maven-metadata.xml with content from Maven Central
  [ "$1" == "update" ] && curl -s --fail https://repo.maven.apache.org/maven2/$(echo ${groupId} | tr '.' '/')/${artifactId}/maven-metadata.xml --output ${metadata}
  lastUpdated="$(cat "${metadata}" | grep 'lastUpdated>' | cut -d '>' -f 2 | cut -d '<' -f 1)"

  bin/update-project-summary.sh $dir
  . tmp/$dir/count.sh
  ((globalVersion+=$countVersion))
  ((globalVersionOk+=$countVersionOk))

  # add project entry to main README
  row="|"
  [[ "$displayGroupId" != "$prevGroupId" ]] && prevGroupId="$displayGroupId" && row+=" ${displayGroupId}"
  row+=" | [${displayArtifactId}](${dir}/README.md)"
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
    [ "${rebuildOk}" = "ok" ] && echo "$dir/${previousBuildspec}:${addVersion}" >> doc/add-ok.txt # for bin/create-new-release-PRs.sh
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
lead_unexpected_diffoscope='^<!-- BEGIN GENERATED UNEXPECTED DIFFOSCOPE -->$'
tail_unexpected_diffoscope='^<!-- END GENERATED UNEXPECTED DIFFOSCOPE -->$'
lead_missing_diffoscope='^<!-- BEGIN GENERATED MISSING DIFFOSCOPE -->$'
tail_missing_diffoscope='^<!-- END GENERATED MISSING DIFFOSCOPE -->$'
lead_staging='^<!-- BEGIN GENERATED ADD STAGING -->$'
tail_staging='^<!-- END GENERATED ADD STAGING -->$'
lead_ko='^<!-- BEGIN GENERATED ADD KO -->$'
tail_ko='^<!-- END GENERATED ADD KO -->$'
lead_newest='^<!-- BEGIN GENERATED NEWEST NOT REPRODUCIBLE -->$'
tail_newest='^<!-- END GENERATED NEWEST NOT REPRODUCIBLE -->$'
sed -e "/$lead/,/$tail/{ /$lead/{p; r tmp/add-ok-table.md
        }; /$tail/p; d }" doc/add.md | \
    sed -e "/$lead_unexpected_diffoscope/,/$tail_unexpected_diffoscope/{ /$lead_unexpected_diffoscope/{p; r $unexpectedDiffoscope
        }; /$tail_unexpected_diffoscope/p; d }" | \
    sed -e "/$lead_missing_diffoscope/,/$tail_missing_diffoscope/{ /$lead_missing_diffoscope/{p; r $missingDiffoscope
        }; /$tail_missing_diffoscope/p; d }" | \
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
