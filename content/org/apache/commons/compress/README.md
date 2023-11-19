[org.apache.commons:commons-compress](https://central.sonatype.com/artifact/org.apache.commons/commons-compress/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.commons:commons-compress](https://central.sonatype.com/artifact/org.apache.commons/commons-compress/versions)

Source code: [https://github.com/apache/commons-compress.git](https://github.com/apache/commons-compress.git)

rebuilding **3 releases** of org.apache.commons:commons-compress:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:),
- 3 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [1.25.0](https://central.sonatype.com/artifact/org.apache.commons/commons-compress/1.25.0/pom) | | | |
| [1.24.0](https://central.sonatype.com/artifact/org.apache.commons/commons-compress/1.24.0/pom) | [mvn jdk17](commons-compress-1.24.0.buildspec) | [result](commons-compress-1.24.0.buildinfo): [4 :heavy_check_mark:  2 :warning:](commons-compress-1.24.0.buildcompare) [:mag:](commons-compress-1.24.0.diffoscope) [:memo:](https://github.com/apache/commons-parent/commit/fd1adff1373fbd169525389315198e990e06e3b2) | 185M |
| [1.23.0](https://central.sonatype.com/artifact/org.apache.commons/commons-compress/1.23.0/pom) | [mvn jdk8](commons-compress-1.23.0.buildspec) | [result](commons-compress-1.23.0.buildinfo): [3 :heavy_check_mark:  2 :warning:](commons-compress-1.23.0.buildcompare) [:mag:](commons-compress-1.23.0.diffoscope) | 93M |
| [1.22](https://central.sonatype.com/artifact/org.apache.commons/commons-compress/1.22/pom) | [mvn jdk8](commons-compress-1.22.buildspec) | [result](commons-compress-1.22.buildinfo): [3 :heavy_check_mark:  2 :warning:](commons-compress-1.22.buildcompare) [:mag:](commons-compress-1.22.diffoscope) | 93M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
