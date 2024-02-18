#!/bin/bash

previousBuildspec=$1
nextVersion=$2

. ${previousBuildspec}

dir=`dirname ${previousBuildspec}`
file=`basename ${previousBuildspec} -${version}.buildspec`

nextBuildspec=${dir}/${file}-${nextVersion}.buildspec

sed "s/^version=.*/version=${nextVersion}/" ${previousBuildspec} > ${nextBuildspec}

./rebuild.sh ${nextBuildspec} $3

echo
echo -e "if result is ok, run:"
echo -e "\e[0;32mgit add ${dir} ; git commit -m \"add ${artifactId} ${nextVersion}\" ; git push\e[0m"
