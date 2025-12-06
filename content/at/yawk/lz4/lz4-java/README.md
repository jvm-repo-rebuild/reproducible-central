[at/yawk/lz4:lz4-java](https://central.sonatype.com/artifact/at/yawk/lz4/lz4-java/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [at/yawk/lz4:lz4-java](https://central.sonatype.com/artifact/at/yawk/lz4/lz4-java/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/at/yawk/lz4/lz4-java/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/at/yawk/lz4/lz4-java/README.md)

Source code: [https://github.com/yawkat/lz4-java.git](https://github.com/yawkat/lz4-java.git)

rebuilding **3 releases** of at/yawk/lz4:lz4-java:
- **1** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 2, 0 had all their differences removed :recycle:, 2 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [1.10.1](https://central.sonatype.com/artifact/at.yawk.lz4/lz4-java/1.10.1/pom) | | | |
| [1.10.0](https://central.sonatype.com/artifact/at/yawk/lz4/lz4-java/1.10.0/pom) | [mvn jdk21](lz4-java-1.10.0.buildspec) | [result](lz4-java-1.10.0.buildinfo): [1 :white_check_mark:  2 :warning:](lz4-java-1.10.0.buildcompare) [:mag:](lz4-java-1.10.0.diffoscope) [:memo:](https://github.com/yawkat/lz4-java/pull/15) | 2 :rotating_light: | 1.8M |
| [1.9.0](https://central.sonatype.com/artifact/at/yawk/lz4/lz4-java/1.9.0/pom) | [mvn jdk21](lz4-java-1.9.0.buildspec) | [result](lz4-java-1.9.0.buildinfo): [1 :white_check_mark:  2 :warning:](lz4-java-1.9.0.buildcompare) [:mag:](lz4-java-1.9.0.diffoscope) [:memo:](https://github.com/yawkat/lz4-java/pull/15) | 2 :rotating_light: | 1.8M |
| [1.8.1](https://central.sonatype.com/artifact/at/yawk/lz4/lz4-java/1.8.1/pom) | [mvn jdk21](lz4-java-1.8.1.buildspec) | [result](lz4-java-1.8.1.buildinfo): [3 :white_check_mark: ](lz4-java-1.8.1.buildcompare) | | 1.3M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
