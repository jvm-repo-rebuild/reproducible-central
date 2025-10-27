[io.avaje:avaje-config](https://central.sonatype.com/artifact/io.avaje/avaje-config/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [io.avaje:avaje-config](https://central.sonatype.com/artifact/io.avaje/avaje-config/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/io/avaje/config/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/io/avaje/config/README.md)

Source code: [https://github.com/avaje/avaje-config.git](https://github.com/avaje/avaje-config.git)

rebuilding **3 releases** of io.avaje:avaje-config:
- **2** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 1 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 1, 0 had all their differences removed :recycle:, 1 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [4.2](https://central.sonatype.com/artifact/io.avaje/avaje-config/4.2/pom) | | | |
| [4.2-RC2](https://central.sonatype.com/artifact/io.avaje/avaje-config/4.2-RC2/pom) | [mvn jdk21](avaje-config-4.2-RC2.buildspec) | [result](avaje-config-4.2-RC2.buildinfo): [2 :white_check_mark:  1 :warning:](avaje-config-4.2-RC2.buildcompare) | 1 :no_entry_sign: | 125K |
| [4.2-RC1](https://central.sonatype.com/artifact/io.avaje/avaje-config/4.2-RC1/pom) | [mvn jdk24 w](avaje-config-4.2-RC1.buildspec) | [result](avaje-config-4.2-RC1.buildinfo): [3 :white_check_mark: ](avaje-config-4.2-RC1.buildcompare) | | 125K |
| [4.1](https://central.sonatype.com/artifact/io.avaje/avaje-config/4.1/pom) | [mvn jdk24 w](avaje-config-4.1.buildspec) | [result](avaje-config-4.1.buildinfo): [3 :white_check_mark: ](avaje-config-4.1.buildcompare) | | 124K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
