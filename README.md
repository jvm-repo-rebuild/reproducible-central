Build instructions for (Maven) Central artifacts
================================================

As part of [Reproducible Builds efforts for the JVM](https://reproducible-builds.org/docs/jvm/), this repository is an attempt
at writing rebuild instructions for the artifacts available in [(Maven) Central](https://repo.maven.apache.org/maven2/),
equivalent to the packaging instructions that are maintained by every Linux distribution
(for example Debian's [debian/rules](https://www.debian.org/doc/debian-policy/ch-source#s-debianrules) or ArchLinux's PKGBUILD), whatever the build tool.

## TLDR;

To rebuild (using Docker) every project with build instructions in this Git repository (= *.buildspec file, see [example](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-dependency-plugin/maven-dependency-plugin-3.1.2.buildspec)), just run:
```
find content -name *.buildspec -exec ./rebuild.sh {} \;
```

## Results

<!-- BEGIN GENERATED CONTENT -->
| groupId | artifactId version | build | env | Reproducibility |
| ------- | ------------------ | ----- | --- | --------------- |
| [com.io7m.jade](https://repo.maven.apache.org/maven2/com/io7m/jade) | [com.io7m.jade](https://repo.maven.apache.org/maven2/com/io7m/jade/com.io7m.jade) [1.0.1](https://repo.maven.apache.org/maven2/com/io7m/jade/com.io7m.jade/1.0.1) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/com/io7m/jade/com.io7m.jade-1.0.1.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/com/io7m/jade/com.io7m.jade.documentation-1.0.1.buildinfo) | mvn jdk-11 | 17 :heavy_check_mark: |
| [io.github.derkrischan](https://repo.maven.apache.org/maven2/io/github/derkrischan) | [jpdftest](https://repo.maven.apache.org/maven2/io/github/derkrischan/jpdftest) [0.8.0](https://repo.maven.apache.org/maven2/io/github/derkrischan/jpdftest/0.8.0) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/io/github/derkrischan/jpdftest/jpdftest-0.8.0.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/io/github/derkrischan/jpdftest/jpdftest-0.8.0.buildinfo) | mvn jdk-7 | 1 :heavy_check_mark: |
| [nl.hsac](https://repo.maven.apache.org/maven2/nl/hsac) | [hsac-fitnesse-fixtures](https://repo.maven.apache.org/maven2/nl/hsac/hsac-fitnesse-fixtures) [4.13.0](https://repo.maven.apache.org/maven2/nl/hsac/hsac-fitnesse-fixtures/4.13.0) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/nl/hsac/hsac-fitnesse-fixtures/hsac-fitnesse-fixtures-4.13.0.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/nl/hsac/hsac-fitnesse-fixtures/hsac-fitnesse-fixtures-4.13.0.buildinfo) | mvn jdk-8 |  3 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/nl/hsac/hsac-fitnesse-fixtures/hsac-fitnesse-fixtures-4.13.0.buildinfo.compare) |
| [org.apache.jena](https://repo.maven.apache.org/maven2/org/apache/jena) | [jena](https://repo.maven.apache.org/maven2/org/apache/jena/jena) [3.14.0](https://repo.maven.apache.org/maven2/org/apache/jena/jena/3.14.0) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/jena/jena/jena-3.14.0.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/jena/jena/jena-osgi-features-3.14.0.buildinfo) | mvn jdk-8 | 107 :heavy_check_mark:  30 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/jena/jena/jena-osgi-features-3.14.0.buildinfo.compare) |
| [org.apache.maven.doxia](https://repo.maven.apache.org/maven2/org/apache/maven/doxia) | [doxia](https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia) [1.9.1](https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia/1.9.1) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/doxia/doxia/doxia-1.9.1.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/doxia/doxia/doxia-module-markdown-1.9.1.buildinfo) | mvn jdk-8 | 38 :heavy_check_mark: |
| [org.apache.maven.doxia](https://repo.maven.apache.org/maven2/org/apache/maven/doxia) | [doxia-sitetools](https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sitetools) [1.9.2](https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sitetools/1.9.2) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/doxia/doxia-sitetools/doxia-sitetools-1.9.2.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/doxia/doxia-sitetools/doxia-doc-renderer-1.9.2.buildinfo) | mvn jdk-7 | 12 :heavy_check_mark: |
| [org.apache.maven](https://repo.maven.apache.org/maven2/org/apache/maven) | [maven](https://repo.maven.apache.org/maven2/org/apache/maven/maven) [3.6.3](https://repo.maven.apache.org/maven2/org/apache/maven/maven/3.6.3) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/maven/maven-3.6.3.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/maven/apache-maven-3.6.3.buildinfo) | mvn jdk-8 win |  32 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/maven/apache-maven-3.6.3.buildinfo.compare) |
| [org.apache.maven.plugins](https://repo.maven.apache.org/maven2/org/apache/maven/plugins) | [maven-checkstyle-plugin](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-checkstyle-plugin) [3.1.1](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-checkstyle-plugin/3.1.1) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-checkstyle-plugin/maven-checkstyle-plugin-3.1.1.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-checkstyle-plugin/maven-checkstyle-plugin-3.1.1.buildinfo) | mvn jdk-8 | 3 :heavy_check_mark: |
| [org.apache.maven.plugins](https://repo.maven.apache.org/maven2/org/apache/maven/plugins) | [maven-dependency-plugin](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin) [3.1.2](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.1.2) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-dependency-plugin/maven-dependency-plugin-3.1.2.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-dependency-plugin/maven-dependency-plugin-3.1.2.buildinfo) | mvn jdk-8 | 3 :heavy_check_mark: |
| [org.apache.maven.plugins](https://repo.maven.apache.org/maven2/org/apache/maven/plugins) | [maven-javadoc-plugin](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-javadoc-plugin) [3.2.0](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-javadoc-plugin/3.2.0) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-javadoc-plugin/maven-javadoc-plugin-3.2.0.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-javadoc-plugin/maven-javadoc-plugin-3.2.0.buildinfo) | mvn jdk-8 | 3 :heavy_check_mark: |
| [org.apache.maven.plugins](https://repo.maven.apache.org/maven2/org/apache/maven/plugins) | [maven-shade-plugin](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-shade-plugin) [3.2.2](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-shade-plugin/3.2.2) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-shade-plugin/maven-shade-plugin-3.2.2.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-shade-plugin/maven-shade-plugin-3.2.2.buildinfo) | mvn jdk-8 | 3 :heavy_check_mark: |
| [org.apache.maven.plugins](https://repo.maven.apache.org/maven2/org/apache/maven/plugins) | [maven-site-plugin](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-site-plugin) [3.9.0](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-site-plugin/3.9.0) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-site-plugin/maven-site-plugin-3.9.0.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-site-plugin/maven-site-plugin-3.9.0.buildinfo) | mvn jdk-7 | 1 :heavy_check_mark:  2 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-site-plugin/maven-site-plugin-3.9.0.buildinfo.compare) |
| [org.apache.maven.plugins](https://repo.maven.apache.org/maven2/org/apache/maven/plugins) | [maven-source-plugin](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-source-plugin) [3.2.1](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-source-plugin/3.2.1) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-source-plugin/maven-source-plugin-3.2.1.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-source-plugin/maven-source-plugin-3.2.1.buildinfo) | mvn jdk-8 |  3 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-source-plugin/maven-source-plugin-3.2.1.buildinfo.compare) |
| [org.apache.maven.shared](https://repo.maven.apache.org/maven2/org/apache/maven/shared) | [maven-verifier](https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-verifier) [1.7.1](https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-verifier/1.7.1) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/shared/maven-verifier/maven-verifier-1.7.1.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/shared/maven-verifier/maven-verifier-1.7.1.buildinfo) | mvn jdk-8 win | 3 :heavy_check_mark: |
| [org.apache.sling](https://repo.maven.apache.org/maven2/org/apache/sling) | [org.apache.sling.commons.johnzon](https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.commons.johnzon) [1.2.0](https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.commons.johnzon/1.2.0) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.commons.johnzon/org.apache.sling.commons.johnzon-1.2.0.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.commons.johnzon/org.apache.sling.commons.johnzon-1.2.0.buildinfo) | mvn jdk-8 | 2 :heavy_check_mark:  1 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.commons.johnzon/org.apache.sling.commons.johnzon-1.2.0.buildinfo.compare) |
| [org.apache.sling](https://repo.maven.apache.org/maven2/org/apache/sling) | [org.apache.sling.installer.core](https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.installer.core) [3.11.0](https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.installer.core/3.11.0) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.core/org.apache.sling.installer.core-3.11.0.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.core/org.apache.sling.installer.core-3.11.0.buildinfo) | mvn jdk-8 | 2 :heavy_check_mark:  1 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.core/org.apache.sling.installer.core-3.11.0.buildinfo.compare) |
| [org.apache.sling](https://repo.maven.apache.org/maven2/org/apache/sling) | [org.apache.sling.installer.factory.packages](https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.installer.factory.packages) [1.0.2](https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.installer.factory.packages/1.0.2) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.factory.packages/org.apache.sling.installer.factory.packages-1.0.2.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.factory.packages/org.apache.sling.installer.factory.packages-1.0.2.buildinfo) | mvn jdk-8 | 2 :heavy_check_mark:  1 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.factory.packages/org.apache.sling.installer.factory.packages-1.0.2.buildinfo.compare) |
| [org.apache.sling](https://repo.maven.apache.org/maven2/org/apache/sling) | [org.apache.sling.installer.provider.file](https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.installer.provider.file) [1.2.2](https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.installer.provider.file/1.2.2) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.provider.file/org.apache.sling.installer.provider.file-1.2.2.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.provider.file/org.apache.sling.installer.provider.file-1.2.2.buildinfo) | mvn jdk-8 | 2 :heavy_check_mark:  1 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.provider.file/org.apache.sling.installer.provider.file-1.2.2.buildinfo.compare) |
| [org.apache.sling](https://repo.maven.apache.org/maven2/org/apache/sling) | [org.apache.sling.installer.provider.jcr](https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.installer.provider.jcr) [3.2.2](https://repo.maven.apache.org/maven2/org/apache/sling/org.apache.sling.installer.provider.jcr/3.2.2) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.provider.jcr/org.apache.sling.installer.provider.jcr-3.2.2.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.provider.jcr/org.apache.sling.installer.provider.jcr-3.2.2.buildinfo) | mvn jdk-8 | 2 :heavy_check_mark:  1 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/sling/org.apache.sling.installer.provider.jcr/org.apache.sling.installer.provider.jcr-3.2.2.buildinfo.compare) |
| [org.codehaus.plexus](https://repo.maven.apache.org/maven2/org/codehaus/plexus) | [plexus-archiver](https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver) [4.2.2](https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.2.2) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/codehaus/plexus/plexus-archiver/plexus-archiver-4.2.2.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/codehaus/plexus/plexus-archiver/plexus-archiver-4.2.2.buildinfo) | mvn jdk-7 | 2 :heavy_check_mark: |
| [org.codehaus.plexus](https://repo.maven.apache.org/maven2/org/codehaus/plexus) | [plexus-compiler](https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler) [2.8.6](https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-compiler/2.8.6) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/codehaus/plexus/plexus-compiler/plexus-compiler-2.8.6.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/codehaus/plexus/plexus-compiler/plexus-compiler-j2objc-2.8.6.buildinfo) | mvn jdk-8 | 21 :heavy_check_mark: |
| [org.codehaus.plexus](https://repo.maven.apache.org/maven2/org/codehaus/plexus) | [plexus-languages](https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-languages) [1.0.5](https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-languages/1.0.5) | [spec](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/codehaus/plexus/plexus-languages/plexus-languages-1.0.5.buildspec) / [info](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/codehaus/plexus/plexus-languages/plexus-java-1.0.5.buildinfo) | mvn jdk-9 | 2 :heavy_check_mark:  1 [:warning:](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/codehaus/plexus/plexus-languages/plexus-java-1.0.5.buildinfo.compare) |
<!-- END GENERATED CONTENT -->

## Understanding What Is Behind

This repository has been built in 2 steps:

1. in January 2019, before Reproducible Builds is implemented by any JVM build tool or used in real public release context,
   inital rebuild tests to find key factors to having a chance to rebuild an artifact
   and get a result similar to reference build available on Central repository,
2. in March 2020, after Maven is able to be [configured for providing Reproducible Builds](https://maven.apache.org/guides/mini/guide-reproducible-builds.html),
   extension of the tests to automatically rebuild and really check against reference artifacts,
   now that there is a chance to get the same output.

## March 2020: Effective Reproducible Builds Checks

- [Plexus Archiver](https://codehaus-plexus.github.io/plexus-archiver/) = `org.codehaus.plexus:`[`plexus-archiver:*`](https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/)\
  __Simple reproducibility test__ using Docker and manually checking sha1 fingerprint.\
  See [results](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/codehaus/plexus/plexus-archiver)\
  version 4.2.2 (2020-02-29) has `project.build.outputTimestamp` property defined,
  this artifact should be reproducible using JDK 7 on any Unix, for example using Docker:
```
$ git clone https://codehaus-plexus.github.io/plexus-archiver.git
$ cd plexus-archiver
$ git checkout plexus-archiver-4.2.2
$ docker run -it --rm --name reproducible-central -v "$PWD":/usr/src/app -w /usr/src/app maven:3.6.1-jdk-7-alpine mvn clean package -DskipTests
$ sha1sum target/plexus-archiver-4.2.2.jar 
e98d2bda3699e13e9c5dd1d53fa1bd08726cc7b7  target/plexus-archiver-4.2.2.jar
```
  which is the same fingerprint as the [reference artifact](https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-archiver/4.2.2/plexus-archiver-4.2.2.jar.sha1)

- [Maven Dependency Plugin](https://maven.apache.org/plugins/maven-dependency-plugin/) = `org.apache.maven.plugins:`[`maven-dependency-plugin:*`](https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/)\
  __Buildinfo check__ using [maven-buildinfo-plugin](https://github.com/apache/maven-studies/tree/maven-buildinfo-plugin) temporary plugin.\
  See [results](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/plugins/maven-dependency-plugin)\
  version 3.1.2 (2020-03-07) has `project.build.outputTimestamp` property defined,
  this artifact should be reproducible using JDK 8 on any Unix, for example using Docker:
```
$ git clone https://github.com/apache/maven-dependency-plugin.git
$ cd maven-dependency-plugin
$ git checkout maven-dependency-plugin-3.1.2
$ docker run -it --rm --name reproducible-central -v "$PWD":/usr/src/app -w /usr/src/app maven:3.6.3-jdk-8-slim mvn -Papache-release clean package -DskipTests -Dgpg.skip buildinfo:save -Dreference.repo=central
[...]
[INFO] --- maven-buildinfo-plugin:1.0-SNAPSHOT:buildinfo (default-cli) @ maven-dependency-plugin ---
[INFO] Saved info on build to /usr/src/app/target/maven-dependency-plugin-3.1.2.buildinfo
[INFO] Checking against reference build from central...
Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.1.2/maven-dependency-plugin-3.1.2.buildinfo
[WARNING] Reference buildinfo file not found: it will be generated from downloaded reference artifacts
Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.1.2/maven-dependency-plugin-3.1.2-source-release.zip
Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.1.2/maven-dependency-plugin-3.1.2-source-release.zip (586 kB at 18 MB/s)
Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.1.2/maven-dependency-plugin-3.1.2.jar
Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.1.2/maven-dependency-plugin-3.1.2.jar (172 kB at 12 MB/s)
Downloading from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.1.2/maven-dependency-plugin-3.1.2-sources.jar
Downloaded from central: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.1.2/maven-dependency-plugin-3.1.2-sources.jar (131 kB at 7.7 MB/s)
[INFO] Minimal buildinfo generated from downloaded artifacts: /usr/src/app/target/reference/maven-dependency-plugin-3.1.2.buildinfo
[INFO] Reproducible Build output summary: 3 files ok
```
`maven-buildinfo-plugin` generated `maven-dependency-plugin-3.1.2.buildinfo` and checked automatically 3 output files: `maven-dependency-plugin-3.1.2-source-release.zip`, `maven-dependency-plugin-3.1.2.jar` and `maven-dependency-plugin-3.1.2-sources.jar`

- `rebuild.sh`: for easier and more robust rebuilding, `rebuild.sh <path to buildspec>` script has been written.
  Previous examples can simply be run with:
```
./rebuild.sh org/codehaus/plexus/plexus-archiver/plexus-archiver-4.2.2.buildspec
./rebuild.sh org/apache/maven/plugins/maven-dependency-plugin/maven-dependency-plugin-3.1.2.buildspec
```

## January 2019: Initial Rebuild Tests

We know that builds are not reproducible (in [Reproducible Builds](https://reproducible-builds.org/) way),
but let's try to see how to rebuild and get the output nearest to reference artifacts in Central.

The fact that build platforms used for building artifacts published to Maven Central are not uniform (unlike a Linux distribution), defining the environment requirements of the rebuild instructions will be a tricky part: which OS is necessary? Has it to be very precise (a specific version of a specific distribution of Linux?) or can it be loose (any Unix)? Which version of which build tools have to be installed? With the same question on version precision. The objective is to track only key information that impacts the binary, to have a chance to get the same binary as the reference "official" binary found on Central, but letting as much flexibility as possible for the rebuilder to create his rebuild platform.

Once rebuild instructions are precise enough for people from different horizons to be able to rebuild typical projects as their binary was published on Central,
we'll see buildinfo more in details: how does it link to build instructions and add extra details?

And in the future, once formats are stabilized, it is expected that every project provides its rebuild instructions (including explicit prerequisites) when publishing to Central. Then the current work is not necessary to be maintained forever: just for old artifacts.

### Interesting cases built with Maven

For each project, an `analyze.sh` script is written to detect the key environment setup used to build the binary published in Central: the result can be found in `analysis.txt`. The `build` variable in the script is not really used, just stored in the analysis script in preparation of future steps where real rebuild instructions will be written.

- [Plexus Utils](https://codehaus-plexus.github.io/plexus-utils/) = `org.codehaus.plexus:`[`plexus-utils:*`](https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/)\
  __Simple jar__ from basic java code that could be built without Maven but with javac and jar commands.\
  No buildable source tarball available anywhere, just scm (when still available, since migrations over time)\
  See [results](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/codehaus/plexus/plexus-utils)\
  __Learning 1__: target bytecode != minimum required JDK version to build != effective JDK used for the reference build on Central (example: for plexus-utils 3.1.1, target = 6, minimum = 7, used = 8)\
  __Learning 2__: bytecode generated by different major JDK version is very different, then to reproduce the binary published in central, it's the effective JDK version that counts, not minimum (even less target)\
  __Learning 3__: some versions were built on Windows, which cause a source of variability in a few text files but not bytecode.
  Windows vs Unix (any) prerequisite will have to be stored in rebuild instructions, or if possible the build script will have
  to be improved to remove the impact of Windows platform on the binary (considering any Unix will be easier for rebuilders to setup)\
  __Learning 4__: reproducing the result of a build done on Windows from a Unix build box can be done by adding `-Dline.separator=$'\r\n'` argument during the Maven invocation (tested on a few cases, need more experience to know if there are cases where this is not sufficient)

- [Jansi](http://fusesource.github.io/jansi/) = `org.fusesource.jansi:`[`jansi:*`](https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi/)\
  Jar built from Java code and uber-jar with dependencies.\
  Notice: __multi-module Maven build__ (root artifactId = `jansi-project`, modules = `jansi` & `example`, groupId = [`org.fusesource.jansi`](https://repo.maven.apache.org/maven2/org/fusesource/jansi/))\
  See [results](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/fusesource/jansi/jansi-project)\
  __Learning__: For future automation, it's more convenient to place rebuild instructions on root artifact and let modules point to the root
  (and ignore the fact that the useul artifact is jansi and the git repository name jansi.git is the id of a module instead of the root artifactId):
  this will permit a Maven plugin to automatically adapt buildinfo format in root vs modules

- [Maven (core)](https://maven.apache.org/ref/) = `org.apache.maven:`[`apache-maven:2.0.10+`](https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/)\
  multi-module (root artifactId = `maven`, modules vary over time), buildable source in repository as `apache-maven-<version>-src.zip` and `.tar.gz` in `org.apache.maven:apache-maven` module\
  See [results](https://github.com/jvm-repo-rebuild/reproducible-central/tree/master/content/org/apache/maven/maven)\
  __Learning__: added `-Papache-release -Dgpg.skip` to build command to get source and javadoc attached artifacts (`-sources.jar` and `-javadoc.jar`), useful to check reproducibility since downloaded by IDEs

- [Apache Royale](https://royale.apache.org/): `org.apache.royale.` [`compiler`](https://repo.maven.apache.org/maven2/org/apache/royale/compiler) [`typedefs`](https://repo.maven.apache.org/maven2/org/apache/royale/typedefs) and [`framework`](https://repo.maven.apache.org/maven2/org/apache/royale/framework)\
  a few prerequisites to install ("Flash Player projector content debugger", airglobal-20.0.swc): see [build instructions](https://github.com/apache/royale-asjs/wiki/Build-Apache-Royale-with-Maven)\
  __Learning__: prerequisites installation instructions needed, at least as documentation, but in the future in an executable way

- [Jansi native](https://github.com/fusesource/jansi-native) = `org.fusesource.jansi:`[`jansi-native:*`](https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi-native/)\
  java code plus **additional native (then build-platform dependant with 7 different platforms) code**.\
  Until 1.5, native code published as jansi-native artifactId, since 1.6 published
  as separate `jansi-${platform}` where platform may be `osx`, `linux32`, `linux64`, `windows32`, `windows64`, `freebsd32` or `freebsd64`\
  __Learning 1__: sometimes, not only one very specific OS is required, but sometimes also multiple OSes\
  __Learning 2__: in addition, some native tools are necessary (like a C compiler or some system libraries)

### Interesting cases built with SBT

TBD

### Interesting cases built with (name another build tool)

TBD
