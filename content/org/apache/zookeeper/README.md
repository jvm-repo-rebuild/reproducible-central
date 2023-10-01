[org.apache.zookeeper:parent](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.zookeeper:parent](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/versions)

Source code: [https://github.com/apache/zookeeper.git](https://github.com/apache/zookeeper.git)

<details><summary>This project defines 8 modules:</summary>

* [org.apache.zookeeper:parent](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.9.0)
* [org.apache.zookeeper:zookeeper](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper/3.9.0)
* [org.apache.zookeeper:zookeeper-contrib](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-contrib/3.9.0)
* [org.apache.zookeeper:zookeeper-contrib-fatjar](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-contrib-fatjar/3.9.0)
* [org.apache.zookeeper:zookeeper-it](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-it/3.9.0)
* [org.apache.zookeeper:zookeeper-jute](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-jute/3.9.0)
* [org.apache.zookeeper:zookeeper-metrics-providers](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-metrics-providers/3.9.0)
* [org.apache.zookeeper:zookeeper-prometheus-metrics](https://central.sonatype.com/artifact/org.apache.zookeeper/zookeeper-prometheus-metrics/3.9.0)
</details>

rebuilding **2 releases** of org.apache.zookeeper:parent:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [3.9.0](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.9.0/pom) | [mvn jdk11](zookeeper-3.9.0.buildspec) | [result](parent-3.9.0.buildinfo): [17 :heavy_check_mark:  7 :warning:](parent-3.9.0.buildcompare) [:mag:](parent-3.9.0.diffoscope) [:memo:](https://issues.apache.org/jira/browse/ZOOKEEPER-4732) | 17M |
| [3.8.2](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.8.2/pom) | | | |
| [3.8.1](https://central.sonatype.com/artifact/org.apache.zookeeper/parent/3.8.1/pom) | [mvn jdk8](zookeeper-3.8.1.buildspec) | [result](parent-3.8.1.buildinfo): [16 :heavy_check_mark:  8 :warning:](parent-3.8.1.buildcompare) [:mag:](parent-3.8.1.diffoscope) | 18M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
