[org.antlr:antlr4-master](https://central.sonatype.com/artifact/org.antlr/antlr4-master/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.antlr:antlr4-master](https://central.sonatype.com/artifact/org.antlr/antlr4-master/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/antlr/antlr4/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/antlr/antlr4/README.md)

Source code: [https://github.com/antlr/antlr4.git](https://github.com/antlr/antlr4.git)

<details><summary>This project defines 6 modules:</summary>

* [org.antlr:antlr4](https://central.sonatype.com/artifact/org.antlr/antlr4/overview)
* [org.antlr:antlr4-master](https://central.sonatype.com/artifact/org.antlr/antlr4-master/overview)
* [org.antlr:antlr4-maven-plugin](https://central.sonatype.com/artifact/org.antlr/antlr4-maven-plugin/overview)
* [org.antlr:antlr4-runtime](https://central.sonatype.com/artifact/org.antlr/antlr4-runtime/overview)
* [org.antlr:antlr4-runtime-testsuite](https://central.sonatype.com/artifact/org.antlr/antlr4-runtime-testsuite/overview)
* [org.antlr:antlr4-tool-testsuite](https://central.sonatype.com/artifact/org.antlr/antlr4-tool-testsuite/overview)
</details>

rebuilding **4 releases** of org.antlr:antlr4-master:
- **2** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [4.13.2](https://central.sonatype.com/artifact/org.antlr/antlr4-master/4.13.2/pom) | [mvn jdk11](antlr4-4.13.2.buildspec) | [result](antlr4-master-4.13.2.buildinfo): [15 :white_check_mark: ](antlr4-master-4.13.2.buildcompare) | | 5.4M |
| [4.13.1](https://central.sonatype.com/artifact/org.antlr/antlr4-master/4.13.1/pom) | [mvn jdk11](antlr4-4.13.1.buildspec) | [result](antlr4-master-4.13.1.buildinfo): [15 :white_check_mark: ](antlr4-master-4.13.1.buildcompare) | | 5.4M |
| [4.13.0](https://central.sonatype.com/artifact/org.antlr/antlr4-master/4.13.0/pom) | [mvn jdk11](antlr4-4.13.0.buildspec) | [result](antlr4-master-4.13.0.buildinfo): [14 :white_check_mark:  1 :warning:](antlr4-master-4.13.0.buildcompare) [:memo:](https://github.com/antlr/antlr4/pull/4277) | - | 5.4M |
| [4.12.0](https://central.sonatype.com/artifact/org.antlr/antlr4-master/4.12.0/pom) | [mvn jdk11](antlr4-4.12.0.buildspec) | [result](antlr4-master-4.12.0.buildinfo): [14 :white_check_mark:  1 :warning:](antlr4-master-4.12.0.buildcompare) [:mag:](antlr4-master-4.12.0.diffoscope) [:memo:](https://github.com/antlr/antlr4/pull/4277) | - | 8.0M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
