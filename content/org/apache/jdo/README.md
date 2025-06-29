[org.apache:jdo](https://central.sonatype.com/artifact/org.apache/jdo/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache:jdo](https://central.sonatype.com/artifact/org.apache/jdo/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/apache/jdo/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/apache/jdo/README.md)

Source code: [https://github.com/apache/db-jdo.git](https://github.com/apache/db-jdo.git)

<details><summary>This project defines 3 modules:</summary>

* [javax.jdo:jdo-api](https://central.sonatype.com/artifact/javax.jdo/jdo-api/overview)
* [org.apache.jdo:parent-pom](https://central.sonatype.com/artifact/org.apache.jdo/parent-pom/overview)
* [org.apache:jdo](https://central.sonatype.com/artifact/org.apache/jdo/overview)
</details>

rebuilding **2 releases** of org.apache.jdo:jdo:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [3.2.1](https://central.sonatype.com/artifact/org.apache/jdo/3.2.1/pom) | [mvn jdk8 w](jdo-3.2.1.buildspec) | [result](jdo-3.2.1.buildinfo): [6 :white_check_mark:  1 :warning:](jdo-3.2.1.buildcompare) [:mag:](jdo-3.2.1.diffoscope) [:memo:](https://github.com/apache/db-jdo/pull/49) | - | 4.9M |
| [3.2](https://central.sonatype.com/artifact/org.apache.jdo/jdo/3.2/pom) | [mvn jdk8 w](jdo-3.2.buildspec) | [result](jdo-3.2.buildinfo): [6 :white_check_mark:  1 :warning:](jdo-3.2.buildcompare) [:mag:](jdo-3.2.diffoscope) [:memo:](https://github.com/apache/db-jdo/pull/36) | - | 10M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
