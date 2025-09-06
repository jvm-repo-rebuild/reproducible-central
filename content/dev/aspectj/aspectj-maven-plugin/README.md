[dev.aspectj:aspectj-maven-plugin](https://central.sonatype.com/artifact/dev.aspectj/aspectj-maven-plugin/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [dev.aspectj:aspectj-maven-plugin](https://central.sonatype.com/artifact/dev.aspectj/aspectj-maven-plugin/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/dev/aspectj/aspectj-maven-plugin/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/dev/aspectj/aspectj-maven-plugin/README.md)

Source code: [https://github.com/dev-aspectj/aspectj-maven-plugin.git](https://github.com/dev-aspectj/aspectj-maven-plugin.git)

rebuilding **2 releases** of dev.aspectj:aspectj-maven-plugin:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 2, 2 had all their differences removed :recycle:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [1.14.1](https://central.sonatype.com/artifact/dev.aspectj/aspectj-maven-plugin/1.14.1/pom) | [mvn jdk8 w](aspectj-maven-plugin-1.14.1.buildspec) | [result](aspectj-maven-plugin-1.14.1.buildinfo): [1 :white_check_mark:  2 :warning:](aspectj-maven-plugin-1.14.1.buildcompare) | 2 :recycle: | 141K |
| [1.14](https://central.sonatype.com/artifact/dev.aspectj/aspectj-maven-plugin/1.14/pom) | [mvn jdk11 w](aspectj-maven-plugin-1.14.buildspec) | [result](aspectj-maven-plugin-1.14.buildinfo): [2 :white_check_mark:  1 :warning:](aspectj-maven-plugin-1.14.buildcompare) | 1 :recycle: | 140K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
