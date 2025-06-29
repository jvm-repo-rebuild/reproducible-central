[jakarta.servlet:jakarta.servlet-api](https://central.sonatype.com/artifact/jakarta.servlet/jakarta.servlet-api/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [jakarta.servlet:jakarta.servlet-api](https://central.sonatype.com/artifact/jakarta.servlet/jakarta.servlet-api/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/jakarta/servlet/jakarta.servlet-api/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/jakarta/servlet/jakarta.servlet-api/README.md)

Source code: [https://github.com/eclipse-ee4j/servlet-api.git](https://github.com/eclipse-ee4j/servlet-api.git)

rebuilding **3 releases** of jakarta.servlet:jakarta.servlet-api:
- **1** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [6.1.0](https://central.sonatype.com/artifact/jakarta.servlet/jakarta.servlet-api/6.1.0/pom) | [mvn jdk11.0.2](jakarta.servlet-api-6.1.0.buildspec) | [result](jakarta.servlet-api-6.1.0.buildinfo): [5 :white_check_mark: ](jakarta.servlet-api-6.1.0.buildcompare) | | 890K |
| [6.1.0-M2](https://central.sonatype.com/artifact/jakarta.servlet/jakarta.servlet-api/6.1.0-M2/pom) | [mvn jdk11.0.2](jakarta.servlet-api-6.1.0-M2.buildspec) | [result](jakarta.servlet-api-6.1.0-M2.buildinfo): [4 :white_check_mark:  1 :warning:](jakarta.servlet-api-6.1.0-M2.buildcompare) [:mag:](jakarta.servlet-api-6.1.0-M2.diffoscope) [:memo:](https://github.com/jakartaee/servlet/issues/578) | - | 817K |
| [6.1.0-M1](https://central.sonatype.com/artifact/jakarta.servlet/jakarta.servlet-api/6.1.0-M1/pom) | [mvn jdk11.0.2](jakarta.servlet-api-6.1.0-M1.buildspec) | [result](jakarta.servlet-api-6.1.0-M1.buildinfo): [4 :white_check_mark:  1 :warning:](jakarta.servlet-api-6.1.0-M1.buildcompare) | - | 816K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
