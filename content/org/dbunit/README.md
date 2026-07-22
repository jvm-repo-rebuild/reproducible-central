[org.dbunit:dbunit](https://central.sonatype.com/artifact/org.dbunit/dbunit/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.dbunit:dbunit](https://central.sonatype.com/artifact/org.dbunit/dbunit/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/dbunit/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/dbunit/README.md)

Source code: [https://github.com/dbunit/dbunit-extension.git](https://github.com/dbunit/dbunit-extension.git)

rebuilding **2 releases** of org.dbunit:dbunit:
- **1** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 1 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 1, 0 had all their differences removed :recycle:, 1 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [3.3.0](https://central.sonatype.com/artifact/org.dbunit/dbunit/3.3.0/pom) | | | |
| [3.2.0](https://central.sonatype.com/artifact/org.dbunit/dbunit/3.2.0/pom) | [mvn jdk25 w](dbunit-3.2.0.buildspec) | [result](dbunit-3.2.0.buildinfo): [2 :white_check_mark:  1 :warning:](dbunit-3.2.0.buildcompare) [:mag:](dbunit-3.2.0.diffoscope) | 1 :rotating_light: | 1.3M |
| [3.1.0](https://central.sonatype.com/artifact/org.dbunit/dbunit/3.1.0/pom) | [mvn jdk25 w](dbunit-3.1.0.buildspec) | [result](dbunit-3.1.0.buildinfo): [3 :white_check_mark: ](dbunit-3.1.0.buildcompare) | | 1.3M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
