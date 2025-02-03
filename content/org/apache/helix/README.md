[org.apache.helix:helix](https://central.sonatype.com/artifact/org.apache.helix/helix/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.helix:helix](https://central.sonatype.com/artifact/org.apache.helix/helix/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/apache/helix/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/apache/helix/README.md)

Source code: [https://github.com/apache/helix.git](https://github.com/apache/helix.git)

<details><summary>This project defines 13 modules:</summary>

* [org.apache.helix:helix](https://central.sonatype.com/artifact/org.apache.helix/helix/overview)
* [org.apache.helix:helix-admin-webapp](https://central.sonatype.com/artifact/org.apache.helix/helix-admin-webapp/overview)
* [org.apache.helix:helix-agent](https://central.sonatype.com/artifact/org.apache.helix/helix-agent/overview)
* [org.apache.helix:helix-common](https://central.sonatype.com/artifact/org.apache.helix/helix-common/overview)
* [org.apache.helix:helix-core](https://central.sonatype.com/artifact/org.apache.helix/helix-core/overview)
* [org.apache.helix:helix-front](https://central.sonatype.com/artifact/org.apache.helix/helix-front/overview)
* [org.apache.helix:helix-lock](https://central.sonatype.com/artifact/org.apache.helix/helix-lock/overview)
* [org.apache.helix:helix-rest](https://central.sonatype.com/artifact/org.apache.helix/helix-rest/overview)
* [org.apache.helix:helix-view-aggregator](https://central.sonatype.com/artifact/org.apache.helix/helix-view-aggregator/overview)
* [org.apache.helix:meta-client](https://central.sonatype.com/artifact/org.apache.helix/meta-client/overview)
* [org.apache.helix:metadata-store-directory-common](https://central.sonatype.com/artifact/org.apache.helix/metadata-store-directory-common/overview)
* [org.apache.helix:metrics-common](https://central.sonatype.com/artifact/org.apache.helix/metrics-common/overview)
* [org.apache.helix:zookeeper-api](https://central.sonatype.com/artifact/org.apache.helix/zookeeper-api/overview)
</details>

rebuilding **9 releases** of org.apache.helix:helix:
- **3** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 6 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [1.4.3](https://central.sonatype.com/artifact/org.apache.helix/helix/1.4.3/pom) | | | |
| [1.4.2](https://central.sonatype.com/artifact/org.apache.helix/helix/1.4.2/pom) | [mvn jdk11](helix-1.4.2.buildspec) | [result](helix-1.4.2.buildinfo): [54 :white_check_mark: ](helix-1.4.2.buildcompare) | 120M |
| [1.4.1](https://central.sonatype.com/artifact/org.apache.helix/helix/1.4.1/pom) | [mvn jdk11](helix-1.4.1.buildspec) | [result](helix-1.4.1.buildinfo): [53 :white_check_mark: ](helix-1.4.1.buildcompare) | 119M |
| [1.4.0](https://central.sonatype.com/artifact/org.apache.helix/helix/1.4.0/pom) | [mvn jdk11](helix-1.4.0.buildspec) | [result](helix-1.4.0.buildinfo): [53 :white_check_mark: ](helix-1.4.0.buildcompare) | 119M |
| [1.3.1](https://central.sonatype.com/artifact/org.apache.helix/helix/1.3.1/pom) | [mvn jdk11](helix-1.3.1.buildspec) | [result](helix-1.3.1.buildinfo): [49 :white_check_mark:  1 :warning:](helix-1.3.1.buildcompare) | 259M |
| [1.3.0](https://central.sonatype.com/artifact/org.apache.helix/helix/1.3.0/pom) | [mvn jdk11](helix-1.3.0.buildspec) | [result](helix-1.3.0.buildinfo): [49 :white_check_mark:  1 :warning:](helix-1.3.0.buildcompare) [:mag:](helix-1.3.0.diffoscope) | 257M |
| [1.2.0](https://central.sonatype.com/artifact/org.apache.helix/helix/1.2.0/pom) | [mvn jdk11](helix-1.2.0.buildspec) | [result](helix-1.2.0.buildinfo): [46 :white_check_mark:  1 :warning:](helix-1.2.0.buildcompare) | 261M |
| [1.1.0](https://central.sonatype.com/artifact/org.apache.helix/helix/1.1.0/pom) | [mvn jdk11](helix-1.1.0.buildspec) | [result](helix-1.1.0.buildinfo): [29 :white_check_mark:  18 :warning:](helix-1.1.0.buildcompare) | 261M |
| [1.0.4](https://central.sonatype.com/artifact/org.apache.helix/helix/1.0.4/pom) | [mvn jdk8](helix-1.0.4.buildspec) | [result](helix-1.0.4.buildinfo): [31 :white_check_mark:  16 :warning:](helix-1.0.4.buildcompare) [:mag:](helix-1.0.4.diffoscope) | 203M |
| [1.0.3](https://central.sonatype.com/artifact/org.apache.helix/helix/1.0.3/pom) | [mvn jdk8](helix-1.0.3.buildspec) | [result](helix-1.0.3.buildinfo): [28 :white_check_mark:  15 :warning:](helix-1.0.3.buildcompare) [:mag:](helix-1.0.3.diffoscope) | 289M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
