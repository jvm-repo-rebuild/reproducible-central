[org.apache.maven.shared:maven-shared-utils](https://central.sonatype.com/artifact/org.apache.maven.shared/maven-shared-utils/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.maven.shared:maven-shared-utils](https://central.sonatype.com/artifact/org.apache.maven.shared/maven-shared-utils/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/apache/maven/shared/maven-shared-utils/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/apache/maven/shared/maven-shared-utils/README.md)

Source code: [https://github.com/apache/maven-shared-utils.git](https://github.com/apache/maven-shared-utils.git)

rebuilding **3 releases** of org.apache.maven.shared:maven-shared-utils:
- **2** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 1 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [3.4.2](https://central.sonatype.com/artifact/org.apache.maven.shared/maven-shared-utils/3.4.2/pom) | [mvn jdk17](maven-shared-utils-3.4.2.buildspec) | [result](maven-shared-utils-3.4.2.buildinfo): [4 :white_check_mark: ](maven-shared-utils-3.4.2.buildcompare) | | 543K |
| [3.4.1](https://central.sonatype.com/artifact/org.apache.maven.shared/maven-shared-utils/3.4.1/pom) | [mvn jdk20](maven-shared-utils-3.4.1.buildspec) | [result](maven-shared-utils-3.4.1.buildinfo): [3 :white_check_mark:  1 :warning:](maven-shared-utils-3.4.1.buildcompare) [:mag:](maven-shared-utils-3.4.1.diffoscope) [:memo:](https://issues.apache.org/jira/browse/MPOM-396) | - | 543K |
| [3.3.4](https://central.sonatype.com/artifact/org.apache.maven.shared/maven-shared-utils/3.3.4/pom) | [mvn jdk8](maven-shared-utils-3.3.4.buildspec) | [result](maven-shared-utils-3.3.4.buildinfo): [4 :white_check_mark: ](maven-shared-utils-3.3.4.buildcompare) | | 553K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
