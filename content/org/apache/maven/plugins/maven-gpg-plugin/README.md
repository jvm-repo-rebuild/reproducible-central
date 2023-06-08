[org.apache.maven.plugins:maven-gpg-plugin](https://central.sonatype.com/artifact/org.apache.maven.plugins/maven-gpg-plugin/3.1.0/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.maven.plugins:maven-gpg-plugin](https://central.sonatype.com/artifact/org.apache.maven.plugins/maven-gpg-plugin/3.1.0/versions)

Source code: [https://github.com/apache/maven-gpg-plugin.git](https://github.com/apache/maven-gpg-plugin.git)

rebuilding **2 releases** of org.apache.maven.plugins:maven-gpg-plugin:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [3.1.0](https://central.sonatype.com/artifact/org.apache.maven.plugins/maven-gpg-plugin/3.1.0/pom) | [mvn jdk11](maven-gpg-plugin-3.1.0.buildspec) | [result](maven-gpg-plugin-3.1.0.buildinfo): [3 :heavy_check_mark:  1 :warning:](maven-gpg-plugin-3.1.0.buildcompare) [:memo:](https://issues.apache.org/jira/browse/MGPG-98) | 223K |
| [3.0.1](https://central.sonatype.com/artifact/org.apache.maven.plugins/maven-gpg-plugin/3.0.1/pom) | [mvn jdk8](maven-gpg-plugin-3.0.1.buildspec) | [result](maven-gpg-plugin-3.0.1.buildinfo): [3 :heavy_check_mark:  1 :warning:](maven-gpg-plugin-3.0.1.buildcompare) [:mag:](maven-gpg-plugin-3.0.1.diffoscope) [:memo:](https://issues.apache.org/jira/browse/MGPG-98) | 209K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
