#!/bin/bash

. bin/includes/update-prepare.sh

dir=$1
metadata=$dir/maven-metadata.xml
groupId=$(cat "${metadata}" | grep 'groupId>' | cut -d '>' -f 2 | cut -d '<' -f 1)
artifactId=$(cat "${metadata}" | grep 'artifactId>' | cut -d '>' -f 2 | cut -d '<' -f 1)

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

  if [ -z "$buildspec" ]
  then
    # no buildspec, just list version to tmp
    echo "| [${version}](https://central.sonatype.com/artifact/${groupId}/${artifactId}/${version}/pom) | | | |" >> "tmp/${projectReadme}"
    [ "$highestVersion" != "$version" ] && missingBuildspec+="$version " && ((countMissingBuildspec++))
  else
    ((countVersion++))

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
      displayGroupId="$(echo "$display" | cut -d : -f 1)"
      displayArtifactId="$(echo "$display" | cut -d : -f 2)"
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

    # add buildspec result to tmp/${projectReadme}
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
      [[ -n "${issue}" ]] && [ "${ko}" -eq 0 ] && echo "      $dir/$buildspec" >> ${unexpectedDiffoscope}
      [[ -n "${diffoscope}" ]] && [[ ! -r "$dir/$(basename ${diffoscope})" ]] && echo "      $dir/$buildspec" >> ${missingDiffoscope}
      row+=" | $(grep length= ${dir}/${_buildinfo} | cut -d = -f 2 | paste -sd+ - | bc | $numfmt --to=iec) |"
      echo "$row" >> tmp/${projectReadme}
    else
      echo "$row:x: | |" >> tmp/${projectReadme}
    fi

    # remove line from doc/add.md if it is listed there
    if [ $(grep "$dir/${buildspec}" doc/add.md | wc -l) -eq 1 ]
    then
      mv doc/add.md doc/add.md.old
      grep -v "$dir/${buildspec}" doc/add.md.old > doc/add.md
      rm doc/add.md.old
    fi
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

echo "displayGroupId=$displayGroupId
displayArtifactId=$displayArtifactId
countVersion=$countVersion
countVersionOk=$countVersionOk
newestBuildspecVersion=$newestBuildspecVersion
highestVersion=$highestVersion
countMissingBuildspec=$countMissingBuildspec
missingBuildspec='$missingBuildspec'" > tmp/$dir/count.sh
