[org.apache.maven.wrapper:maven-wrapper](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.maven.wrapper:maven-wrapper](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/apache/maven/plugins/maven-wrapper-plugin/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/apache/maven/plugins/maven-wrapper-plugin/README.md)

Source code: [https://github.com/apache/maven-wrapper.git](https://github.com/apache/maven-wrapper.git)

<details><summary>This project defines 4 modules:</summary>

* [org.apache.maven.plugins:maven-wrapper-plugin](https://central.sonatype.com/artifact/org.apache.maven.plugins/maven-wrapper-plugin/overview)
* [org.apache.maven.wrapper:maven-wrapper](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper/overview)
* [org.apache.maven.wrapper:maven-wrapper-distribution](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper-distribution/overview)
* [org.apache.maven.wrapper:maven-wrapper-parent](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper-parent/overview)
</details>

rebuilding **10 releases** of org.apache.maven.plugins:maven-wrapper-plugin:
- **9** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 1 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [3.3.4](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper/3.3.4/pom) | [mvn jdk21](wrapper-3.3.4.buildspec) | [result](maven-wrapper-parent-3.3.4.buildinfo): [21 :white_check_mark: ](maven-wrapper-parent-3.3.4.buildcompare) | | 942K |
| [3.3.3](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper/3.3.3/pom) | [mvn jdk21](wrapper-3.3.3.buildspec) | [result](maven-wrapper-parent-3.3.3.buildinfo): [21 :white_check_mark: ](maven-wrapper-parent-3.3.3.buildcompare) | | 942K |
| [3.3.2](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper/3.3.2/pom) | [mvn jdk21](wrapper-3.3.2.buildspec) | [result](maven-wrapper-parent-3.3.2.buildinfo): [21 :white_check_mark: ](maven-wrapper-parent-3.3.2.buildcompare) | | 906K |
| [3.3.1](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper/3.3.1/pom) | [mvn jdk21](wrapper-3.3.1.buildspec) | [result](maven-wrapper-parent-3.3.1.buildinfo): [21 :white_check_mark: ](maven-wrapper-parent-3.3.1.buildcompare) | | 900K |
| [3.3.0](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper/3.3.0/pom) | [mvn jdk21](wrapper-3.3.0.buildspec) | [result](maven-wrapper-parent-3.3.0.buildinfo): [21 :white_check_mark: ](maven-wrapper-parent-3.3.0.buildcompare) | | 899K |
| [3.2.0](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper/3.2.0/pom) | [mvn jdk17](wrapper-3.2.0.buildspec) | [result](maven-wrapper-parent-3.2.0.buildinfo): [15 :white_check_mark: ](maven-wrapper-parent-3.2.0.buildcompare) | | 410K |
| [3.1.1](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper/3.1.1/pom) | [mvn jdk8](wrapper-3.1.1.buildspec) | [result](maven-wrapper-parent-3.1.1.buildinfo): [14 :white_check_mark: ](maven-wrapper-parent-3.1.1.buildcompare) | | 356K |
| [3.1.0](https://central.sonatype.com/artifact/org.apache.maven.wrapper/maven-wrapper-parent/3.1.0/pom) | [mvn jdk8](wrapper-3.1.0.buildspec) | [result](maven-wrapper-parent-3.1.0.buildinfo): [14 :white_check_mark: ](maven-wrapper-parent-3.1.0.buildcompare) | | 351K |
| [3.0.2](https://central.sonatype.com/artifact/org.apache.maven.plugins/maven-wrapper-plugin/3.0.2/pom) | [mvn jdk8 w](maven-wrapper-plugin-3.0.2.buildspec) | [result](maven-wrapper-plugin-3.0.2.buildinfo): [2 :white_check_mark:  2 :warning:](maven-wrapper-plugin-3.0.2.buildcompare) [:mag:](maven-wrapper-plugin-3.0.2.diffoscope) | - | 95K |
| [3.0.1](https://central.sonatype.com/artifact/org.apache.maven.plugins/maven-wrapper-plugin/3.0.1/pom) | [mvn jdk8 w](maven-wrapper-plugin-3.0.1.buildspec) | [result](maven-wrapper-plugin-3.0.1.buildinfo): [4 :white_check_mark: ](maven-wrapper-plugin-3.0.1.buildcompare) | | 89K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
