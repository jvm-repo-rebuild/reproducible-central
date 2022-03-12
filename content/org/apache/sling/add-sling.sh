#!/usr/bin/env bash

subGroup=$1
version=$2

echo "add org.apache.sling.$subGroup $2"

mkdir content/org/apache/sling/org.apache.sling.$subGroup
buildspec=content/org/apache/sling/org.apache.sling.$subGroup/org.apache.sling.$subGroup-$version.buildspec
cp content/org/apache/sling/org.apache.sling.resourcemerger/org.apache.sling.resourcemerger-1.4.0.buildspec $buildspec
sed -i s/resourcemerger/$subGroup/ $buildspec
sed -i s/1.4.0/$version/ $buildspec

./rebuild.sh $buildspec

echo "git add -A ; git commit -m 'add org.apache.sling.$subGroup $version' ; git push"

echo "see https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.$subGroup/ for other releases"
