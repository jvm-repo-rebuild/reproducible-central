Reproducible Central Buildspec File Format
==========================================

As per (Maven) Central Repository [upload requirements](https://maven.apache.org/repository/guide-central-repository-upload.html), it contains sources and javadoc for IDE only, but no data on how to build: where to get the release source? What precise command to launch? What are the prerequisites (minimum JDK version, ...)?

Reproducible Central project is about rebuilding and checking how the output matches reference in the Central Repository: we need to write instructions on rebuilding and automate the rebuild.

# Format

Reproducible Central rebuild instructions for a release are defined in a `.builspec` file that will be used by [`rebuild.sh`](rebuild.sh) script. A `.buildspec` file is de-facto a Bash shell script that defines a few variables that `rebuild.sh` will use to do the rebuild:

```
# Central Repository coordinates for the Reference release
groupId=
artifactId=
version=

# Source code
gitRepo=https://github.com/apache/${artifactId}.git
gitTag=${artifactId}-${version}

# Rebuild environment prerequisites
tool=mvn
jdk=8
newline=crlf

# Rebuild command
command="mvn -Papache-release clean package -DskipTests -Dmaven.javadoc.skip -Dgpg.skip"

# Location of the buildinfo file generated during rebuild to record output fingerprints
buildinfo=target/${artifactId}-${version}.buildinfo
```

## Parameters

- `groupId`, `artifactId` and `version` are not really used to do the rebuild, but to point to the reference output files in (Maven) Central Repository in the final report.
- `gitRepo` and `gitTag` define where to get the source code from and which precise commit represents the release.
- rebuild environment prerequisites: they define key prerequisites to rebuild source code and have a chance that the output files will match reference output from Central Repository:
  - `tool`: the build tool used. Can be `mvn` or `sbt` currently, but don't hesitate to help provide [rebuild support for other JVM build tools](#6),
  - `jdk`: the JDK major version to use, that must match the reference file from Central Repository to have a chance of getting same output,
  - `newline`: `lf` or `crlf` (Windows), to match the environment used to build the reference release in Central Repository,
- `command`: the effective rebuild command to match output in Central Repository
- `buildinfo`: the location where to find the [`.buildinfo` file](https://reproducible-builds.org/docs/jvm/) that is generated during rebuild to record output fingerprints

### Known Simplifications

Reproducible Central project is a first step at rebuilding every public release: rebuild script and its parameters are yet quite basic, to cover the most immediate requirements to rebuild and prove that more and more projects publish reproducible artifacts (which, by the beginning of 2020, is not yet a practice from the majority: but we hope that this will change...).

Then there are some simplifications done for now to match current ambition:

- `artifactId`: some projects build only 1 artifact, but more complex ones ("multi-module" in Mavne terms) build many artifacts: only one artifact is provided in build spec to provide one example link to Central Repository,
- `gitRepo`: current rebuild script only supports Git, which has been sufficient for now,
- `tool`: current build spec does not specify a precise tool version, as it was not yet required: rebuild script chooses arbitrarily,
- `jdk`: only major JDK version is provided, as tests have shown that it is in general sufficient to get reproducible bytecode: rebuild script will choose on its own JVM provider and JDK minor version
