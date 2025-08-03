[commons-cli:commons-cli](https://central.sonatype.com/artifact/commons-cli/commons-cli/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [commons-cli:commons-cli](https://central.sonatype.com/artifact/commons-cli/commons-cli/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/apache/commons/commons-cli/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/apache/commons/commons-cli/README.md)

Source code: [https://github.com/apache/commons-cli.git](https://github.com/apache/commons-cli.git)

rebuilding **3 releases** of commons-cli:commons-cli:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 3 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [1.10.0](https://central.sonatype.com/artifact/commons-cli/commons-cli/1.10.0/pom) | | | |
| [1.9.0](https://central.sonatype.com/artifact/commons-cli/commons-cli/1.9.0/pom) | [mvn jdk17](commons-cli-1.9.0.buildspec) | [result](commons-cli-1.9.0.buildinfo): [6 :white_check_mark:  1 :warning:](commons-cli-1.9.0.buildcompare) [:mag:](commons-cli-1.9.0.diffoscope) | - | 375K |
| [1.8.0](https://central.sonatype.com/artifact/commons-cli/commons-cli/1.8.0/pom) | [mvn jdk17](commons-cli-1.8.0.buildspec) | [result](commons-cli-1.8.0.buildinfo): [6 :white_check_mark:  1 :warning:](commons-cli-1.8.0.buildcompare) [:mag:](commons-cli-1.8.0.diffoscope) | - | 362K |
| [1.7.0](https://central.sonatype.com/artifact/commons-cli/commons-cli/1.7.0/pom) | [mvn jdk17](commons-cli-1.7.0.buildspec) | [result](commons-cli-1.7.0.buildinfo): [6 :white_check_mark:  1 :warning:](commons-cli-1.7.0.buildcompare) | - | 359K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
