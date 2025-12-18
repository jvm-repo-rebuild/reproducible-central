[commons-daemon:commons-daemon](https://central.sonatype.com/artifact/commons-daemon/commons-daemon/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [commons-daemon:commons-daemon](https://central.sonatype.com/artifact/commons-daemon/commons-daemon/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/apache/commons/commons-daemon/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/apache/commons/commons-daemon/README.md)

Source code: [https://github.com/apache/commons-daemon.git](https://github.com/apache/commons-daemon.git)

rebuilding **4 releases** of commons-daemon:commons-daemon:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 4 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 2, 0 had all their differences removed :recycle:, 2 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [1.5.1](https://central.sonatype.com/artifact/commons-daemon/commons-daemon/1.5.1/pom) | [mvn jdk11](commons-daemon-1.5.1.buildspec) | [result](commons-daemon-1.5.1.buildinfo): [9 :white_check_mark:  3 :warning:](commons-daemon-1.5.1.buildcompare) [:mag:](commons-daemon-1.5.1.diffoscope) | 2 :rotating_light: 1 :no_entry_sign: | 2.4M |
| [1.5.0](https://central.sonatype.com/artifact/commons-daemon/commons-daemon/1.5.0/pom) | [mvn jdk8](commons-daemon-1.5.0.buildspec) | [result](commons-daemon-1.5.0.buildinfo): [7 :white_check_mark:  5 :warning:](commons-daemon-1.5.0.buildcompare) | 3 :rotating_light: 2 :no_entry_sign: | 1.6M |
| [1.4.1](https://central.sonatype.com/artifact/commons-daemon/commons-daemon/1.4.1/pom) | [mvn jdk23](commons-daemon-1.4.1.buildspec) | [result](commons-daemon-1.4.1.buildinfo): [7 :white_check_mark:  5 :warning:](commons-daemon-1.4.1.buildcompare) | - | 9.2M |
| [1.4.0](https://central.sonatype.com/artifact/commons-daemon/commons-daemon/1.4.0/pom) | [mvn jdk8](commons-daemon-1.4.0.buildspec) | [result](commons-daemon-1.4.0.buildinfo): [7 :white_check_mark:  5 :warning:](commons-daemon-1.4.0.buildcompare) [:mag:](commons-daemon-1.4.0.diffoscope) | - | 1.6M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
