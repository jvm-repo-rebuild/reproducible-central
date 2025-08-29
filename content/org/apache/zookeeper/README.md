[org.apache.zookeeper:parent](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.zookeeper:parent](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/apache/zookeeper/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/apache/zookeeper/README.md)

Source code: [https://github.com/apache/zookeeper.git](https://github.com/apache/zookeeper.git)

<details><summary>This project defines 8 modules:</summary>

* [org.apache.zookeeper:parent](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/overview)
* [org.apache.zookeeper:zookeeper](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper/overview)
* [org.apache.zookeeper:zookeeper-contrib](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-contrib/overview)
* [org.apache.zookeeper:zookeeper-contrib-fatjar](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-contrib-fatjar/overview)
* [org.apache.zookeeper:zookeeper-it](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-it/overview)
* [org.apache.zookeeper:zookeeper-jute](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-jute/overview)
* [org.apache.zookeeper:zookeeper-metrics-providers](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-metrics-providers/overview)
* [org.apache.zookeeper:zookeeper-prometheus-metrics](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-prometheus-metrics/overview)
</details>

rebuilding **5 releases** of org.apache.zookeeper:parent:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 5 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [3.9.4](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.9.4/pom) | | | |
| [3.9.3](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.9.3/pom) | [mvn jdk11](zookeeper-3.9.3.buildspec) | [result](parent-3.9.3.buildinfo): [21 :white_check_mark:  3 :warning:](parent-3.9.3.buildcompare) [:mag:](parent-3.9.3.diffoscope) | - | 17M |
| [3.9.2](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.9.2/pom) | [mvn jdk11](zookeeper-3.9.2.buildspec) | [result](parent-3.9.2.buildinfo): [19 :white_check_mark:  5 :warning:](parent-3.9.2.buildcompare) [:mag:](parent-3.9.2.diffoscope) | - | 17M |
| [3.9.1](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.9.1/pom) | [mvn jdk11](zookeeper-3.9.1.buildspec) | [result](parent-3.9.1.buildinfo): [17 :white_check_mark:  7 :warning:](parent-3.9.1.buildcompare) [:memo:](https://github.com/apache/zookeeper/pull/2042) | - | 17M |
| [3.9.0](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.9.0/pom) | [mvn jdk11](zookeeper-3.9.0.buildspec) | [result](parent-3.9.0.buildinfo): [17 :white_check_mark:  7 :warning:](parent-3.9.0.buildcompare) [:mag:](parent-3.9.0.diffoscope) [:memo:](https://issues.apache.org/jira/browse/ZOOKEEPER-4732) | - | 17M |
| [3.8.4](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.8.4/pom) | | | |
| [3.8.3](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.8.3/pom) | | | |
| [3.8.2](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.8.2/pom) | | | |
| [3.8.1](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.8.1/pom) | [mvn jdk8](zookeeper-3.8.1.buildspec) | [result](parent-3.8.1.buildinfo): [16 :white_check_mark:  8 :warning:](parent-3.8.1.buildcompare) [:mag:](parent-3.8.1.diffoscope) | - | 18M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
