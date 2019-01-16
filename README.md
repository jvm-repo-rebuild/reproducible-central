Build instructions for (Maven) Central artifacts
================================================

As part of [Reproducible Builds efforts for the JVM](https://reproducible-builds.org/docs/jvm/), this repository is an attempt
at writing rebuild instructions for the artifacts available in [(Maven) Central](https://repo.maven.apache.org/maven2/),
equivalent to the packaging instructions that are maintained by every Linux distribution
(for example Debian's [debian/rules](https://www.debian.org/doc/debian-policy/ch-source#s-debianrules) or ArchLinux's PKGBUILD)

Once rebuild instructions are clear enough for people from different horizons to be able to rebuild typical projects,
we'll see buildinfo more in details: how does it link to build instructions and add extra details?

### Interesting cases built with Maven

- [Plexus Utils](https://codehaus-plexus.github.io/plexus-utils/) = `org.codehaus.plexus:`[`plexus-utils:*`](https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/)\
  Simple jar from basic java code that can be built without Maven but with javac and jar commands.\
  No buildable source tarball available anywhere, just scm (when still available, since migrations over time)\
  Notice: target bytecode != minimum required JDK version to build != effective JDK used for the reference build on Central (example: for plexus-utils 3.1.1, target = 6, minimum = 7, used = 8)

- [Jansi](http://fusesource.github.io/jansi/) = `org.fusesource.jansi:`[`jansi:*`](https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi/)\
  Jar built from Java code and uber-jar with dependencies.\
  Notice: multi-module Maven build (groupId = [`org.fusesource.jansi`](https://repo.maven.apache.org/maven2/org/fusesource/jansi/), root artifactId = `jansi-project`, modules = `jansi` & `example`)

- [Maven (core)](https://maven.apache.org/ref/) = `org.apache.maven:`[`apache-maven:2.0.10+`](https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/)\
  multi-module (root artifactId = `maven`, modules vary over time), buildable source in repository as `apache-maven-<version>-src.zip` and `.tar.gz` in `org.apache.maven:apache-maven` module

- [Jansi native](https://github.com/fusesource/jansi-native) = `org.fusesource.jansi:`[`jansi-native:*`](https://repo.maven.apache.org/maven2/org/fusesource/jansi/jansi-native/)\
  java code plus additional native (then build-platform dependant) code.\
  Until 1.5, native code published as jansi-native artifactId, since 1.6 published
  as separate `jansi-${platform}` where platform may be `osx`, `linux32`, `linux64`, `windows32`, `windows64`, `freebsd32` or `freebsd64`


### Interesting cases built with SBT
