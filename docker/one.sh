#!/usr/bin/env bash
base="$PWD"
image="one:latest"
docker build -t ${image}  .
cd ../content/org/apache/maven/shared/archiver/buildcache/maven-archiver

docker run -it --rm \
--name rebuild-central \
-v $PWD:/var/maven/app \
-v $base:/var/maven/.m2 \
-u $(id -u ${USER}):$(id -g ${USER}) \
-e MAVEN_CONFIG=/var/maven/.m2 \
-w /var/maven/app \
${image} \
mvn -Papache-release clean package -DskipTests -Dmaven.javadoc.skip -Dgpg.skip -V -e org.apache.maven.plugins:maven-artifact-plugin:3.3.0:compare -Dbuildinfo.reproducible -Duser.home=/var/maven