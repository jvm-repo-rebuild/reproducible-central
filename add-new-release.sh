#!/bin/bash

previousBuildspec=$1
nextVersion=$2

. ${previousBuildspec}

dir=`dirname ${previousBuildspec}`
file=`basename ${previousBuildspec} -${version}.buildspec`

nextBuildspec=${dir}/${file}-${nextVersion}.buildspec

sed "s/^version=.*/version=${nextVersion}/" ${previousBuildspec} > ${nextBuildspec}

./rebuild.sh ${nextBuildspec}
