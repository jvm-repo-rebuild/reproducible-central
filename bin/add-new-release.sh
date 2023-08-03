#!/bin/bash

previousBuildspec=$1
nextVersion=$2

. ${previousBuildspec}

dir=`dirname ${previousBuildspec}`
file=`basename ${previousBuildspec} -${version}.buildspec`

nextBuildspec=${dir}/${file}-${nextVersion}.buildspec

sed "s/^version=.*/version=${nextVersion}/" ${previousBuildspec} > ${nextBuildspec}

./rebuild.sh ${nextBuildspec}

echo
echo -e "if result is ok, run: \033[1mgit add ${dir} ; git commit -m \"add ${artifactId} ${nextVersion}\" ; git push\033[0m"
