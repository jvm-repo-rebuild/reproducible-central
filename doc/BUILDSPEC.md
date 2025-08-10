Reproducible Central Buildspec File Format
==========================================

As per Central Repository [upload requirements](https://maven.apache.org/repository/guide-central-repository-upload.html), it contains sources and javadoc (for IDE only), but no data on how to build: where to get the release source to build? What precise command to launch? What are the environment prerequisites (minimum JDK version, ...)?

**Reproducible Central** project is about rebuilding and checking how the output matches reference in the Central Repository. We need to:
1. **write instructions to be able to rebuild**,
2. automate rebuild run,
3. automate the comparison of rebuild output against reference output available in Central Repository.

# Format

**Reproducible Central** rebuild instructions are defined in a `.buildspec` file that will be used by [`rebuild.sh`](../rebuild.sh) script. A `.buildspec` file is de-facto a Bash shell script defining a few variables that `rebuild.sh` will use to do the rebuild:

```
# 1. what does this rebuild?
# = Central Repository coordinates for the Reference release (for multi-module, pick an artitrary module)
groupId=
artifactId=
version=
# where are reference binaries?
# referenceRepo = https://repository.maven.apache.org/maven2/
# layout (= gav to path in referenceRepo) is Maven repository: https://maven.apache.org/repositories/layout.html (future options could be PyPI, npm, Brew, Dockerhub, ...)

# 2. where is source code?
gitRepo=https://github.com/project_org/${artifactId}.git
gitTag=${artifactId}-${version}
# or use source zip archive
sourceDistribution=https://archive.apache.org/dist/maven/scm/${artifactId}-${version}-source-release.zip
sourcePath=${artifactId}-${version}
sourceRmFiles="DEPENDENCIES LICENSE NOTICE"

# 3. rebuild environment prerequisites
tool=mvn
# or tool=mvn-3.8.5 if default 3.6.3 version does not match your prerequisites (available version may be limited by images available on Dockerhub)
# or tool=gradle or tool=sbt
jdk=8
newline=crlf
# crlf for Windows, lf for Unix
# optional:
#umask=002
#timezone="Etc/GMT"
#locale="en_US"
# if rebuild output depends on OS and/or processor architecture
#os=
#arch=
# if rebuild output depends on Azul JDK even when default OpenJDK is available, like with JDK 8 and cyclonedx-maven-plugin
#jdkForceAzul=true
# if rebuild output depends on working directory where source code is stored:
#workdir=/var/<tool>/app

# 4. rebuild command
command="mvn -Papache-release clean package -DskipTests -Dmaven.javadoc.skip -Dgpg.skip"
# optional:
#execBefore=
#execAfter=

# 5. location of the buildinfo file generated during rebuild to record output fingerprints
buildinfo=target/${artifactId}-${version}.buildinfo

# 6. if the release is finally not reproducible, link to an issue tracker entry if one was created
#diffoscope=${artifactId}-${version}.diffoscope
issue=https://github.com/project_org/${artifactId}/issues/xx
```

For building under Maven with recent JDK versions, a few more options are available:
```
# Some projects need multiple JDK versions available via toolchains.
# By setting the toolchains to the list of ('|' separated) desired major JDK versions these will be installed.
# The appropriate toolchains.xml for these versions will be created, the version specified under `jdk=` will be used
# to run maven on.
jdk=17
toolchains="8|11|17"

# Set additional (!) MAVEN_OPTS that are appended to the MAVEN_OPTS provided by base build environment
MAVEN_OPTS='-Duser.country=US -Duser.language=en'
```


## Writing A New Buildspec

To facilitate the job, here are step-by-step instructions:

1. copy `doc/template.buildspec` to `wip/` directory with appropriate final name: `cp doc/template.buildspec wip/[project]-[version].buildspec`
2. update the file with data from the project release you're rebuilding (look at `.pom` content): fill empty values, update default value with content customized to your project. See next "Parameters" section to get more details on each parameter definition.
3. try to rebuild from your buildspec: `./rebuild.sh wip/[project]-[version].buildspec`
4. if result shows some differences between the rebuilt and reference artifacts, copy and paste the [diffoscope](https://diffoscope.org/) commands provided to find differences, then fix buildspec instructions as much as possible
5. once best efforts have been done, please provide us a Pull Request: even if the buildspec is not perfect, i.e. does not permit to fully reproduce the reference artifacts, it is a basis that will help us.

## Parameters

- `groupId`, `artifactId` and `version` are not really used to do the rebuild, but to point to the reference output files in Central Repository in the final report.
- `referenceRepo` is by default Central Repository url, but it can be customized interla company repository (and even default value changed in [`rebuild.sh`](../rebuild.sh))
- `gitRepo` and `gitTag` define where to get the source code from and which precise commit represents the release.
- in case Git is not the best way, `sourceDistribution`, `sourcePath` and `sourceRmFiles` can be defined to download a source zip file.
- rebuild environment prerequisites: they define key prerequisites to rebuild source code and have a chance that the output files will match reference output from Central Repository:
  - `tool`: the build tool used. Can be `mvn`, `gradle` or `sbt` currently, but don't hesitate to help provide [rebuild support for other JVM build tools](/jvm-repo-rebuild/reproducible-central/issues/6),
  - `jdk`: the JDK major version to use, that must match the reference file from Central Repository to have a chance of getting the same binary output,
  - `newline`: `lf` (*nix) or `crlf` (Windows), to match the environment used to build the reference release in Central Repository,
- `command`: the effective rebuild command to match output in Central Repository
- `buildinfo`: the location where to find the [`.buildinfo` file](https://reproducible-builds.org/docs/jvm/) that is generated during rebuild to record output fingerprints (usually, default value is ok)
- `issue`: the url of an issue tracking the reproducibility issue, if release not reproducible and issue was created

### Known Simplifications

Reproducible Central project is a first step at rebuilding every public release: rebuild script and its parameters are yet quite basic, to cover the most immediate requirements to rebuild and prove that more and more projects publish reproducible artifacts (which, by the beginning of 2020, is not yet a practice from the majority: but we hope that this will change...).

Then there are some simplifications done for now to match current ambition:

- `artifactId`: some projects build only 1 artifact, but more complex ones ("multi-module" in Maven terms) build many artifacts: only one artifact is provided in build spec to provide one example link to Central Repository,
- `gitRepo`: current rebuild script only supports Git, which has been sufficient for now, but other source control could be added to [`bin/includes/fetchSource.sh`](../bin/includes/fetchSource.sh)
- `tool`: current build spec does not specify a precise tool version, as it was not yet required: rebuild script chooses arbitrarily,
- `jdk`: only major JDK version is provided, as tests have shown that it is in general sufficient to get reproducible bytecode: rebuild script will choose on its own JVM provider and JDK minor version

## Tips and Tricks

### Avoiding Timestamps in JAXB-generated Content

Configuring `-no-header` to `xjc` will remove the whole header (configure `noGeneratedHeaderComments` for `org.codehaus.mojo:jaxb2-maven-plugin`, or equivalent `noFileHeader` for `org.jvnet.jaxb2.maven2:maven-jaxb2-plugin`): upstream project needs update, see [example](https://github.com/apache/nifi/pull/6500/files#diff-9c5fb3d1b7e3b0f54bc5c4182965c4fe1f9023d449017cece3005d3f90e8e4d8).

Notice: this flag will remove non-reproducible headers from generated java source code, but other non-reproducible bits [requiring post-processing](https://github.com/apache/santuario-xml-security-java/pull/77/files). See also [JAXB-RI #1796](https://github.com/eclipse-ee4j/jaxb-ri/pull/1796).

### Avoid Dependency Exclude Difference in POM Generated by flatten-maven-plugin

Is caused by Maven version chosen in buildspec vs reference: Maven 3.8.1- and Maven 3.8.2+ don't output `groupId` and `artifactId` in the same order. See [#73](../../../issues/73).

### Avoid http vs https maven.xsd URL Difference in POM Generated by flatten-maven-plugin

Maven up to 3.6.2 rewrites schema location in `http`, but starting with 3.6.3, they are rewritten in `https`: see [MNG-6778](https://issues.apache.org/jira/browse/MNG-6778)

### Post process generated content

If non-reproducible generated content is in source files in comments (like often with timestamps), while waiting for the generator plugin to be improved to avoid the
non-reproducible content, using `maven-replacer-plugin` may be a [quick workaround](../../../issues/84).
