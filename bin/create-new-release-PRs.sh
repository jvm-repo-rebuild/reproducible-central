#!/bin/bash

for line in `cat doc/add-ok.txt`
do
  echo -e "\033[0;1m$line\033[0m"
  previousBuildspec="$(echo $line | cut -d ':' -f 1)"
  nextVersion="$(echo $line | cut -d ':' -f 2)"

  . ${previousBuildspec}
  dir=`dirname ${previousBuildspec}`
  file=`basename ${previousBuildspec} -${version}.buildspec`
  nextBuildspec=${dir}/${file}-${nextVersion}.buildspec

  if [ $(git ls-remote -h https://github.com/jvm-repo-rebuild/reproducible-central.git | grep refs/heads/$artifactId-$nextVersion | wc -l) -eq 1 ]
  then
    echo "skipping because branch $artifactId-$nextVersion exists"
  else
    bin/add-new-release.sh $previousBuildspec $nextVersion

    git checkout -b $artifactId-$nextVersion
    git add ${nextBuildspec}
    git commit -m "add ${artifactId} ${nextVersion}" -m "" -m "https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/${dir}/README.md"
    git push --set-upstream origin $artifactId-$nextVersion
    gh pr create --fill --head $artifactId-$nextVersion

    git switch master
  fi

  echo
done