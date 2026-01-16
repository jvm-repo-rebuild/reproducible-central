[org.ow2.asm:asm](https://central.sonatype.com/artifact/org.ow2.asm/asm/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.ow2.asm:asm](https://central.sonatype.com/artifact/org.ow2.asm/asm/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/ow2/asm/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/ow2/asm/README.md)

Source code: [https://gitlab.ow2.org/asm/asm.git](https://gitlab.ow2.org/asm/asm.git)

<details><summary>This project defines 7 modules:</summary>

* [org.ow2.asm:asm](https://central.sonatype.com/artifact/org.ow2.asm/asm/overview)
* [org.ow2.asm:asm-analysis](https://central.sonatype.com/artifact/org.ow2.asm/asm-analysis/overview)
* [org.ow2.asm:asm-bom](https://central.sonatype.com/artifact/org.ow2.asm/asm-bom/overview)
* [org.ow2.asm:asm-commons](https://central.sonatype.com/artifact/org.ow2.asm/asm-commons/overview)
* [org.ow2.asm:asm-test](https://central.sonatype.com/artifact/org.ow2.asm/asm-test/overview)
* [org.ow2.asm:asm-tree](https://central.sonatype.com/artifact/org.ow2.asm/asm-tree/overview)
* [org.ow2.asm:asm-util](https://central.sonatype.com/artifact/org.ow2.asm/asm-util/overview)
</details>

rebuilding **5 releases** of org.ow2.asm:asm:
- **3** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 2, 0 had all their differences removed :recycle:, 2 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [9.9.1](https://central.sonatype.com/artifact/org.ow2.asm/asm/9.9.1/pom) | [gradle jdk21](asm-9.9.1.buildspec) | [result](asm-9.9.1.buildinfo): [19 :white_check_mark: ](asm-9.9.1.buildcompare) | | 1017K |
| [9.9](https://central.sonatype.com/artifact/org.ow2.asm/asm/9.9/pom) | [gradle jdk21](asm-9.9.buildspec) | [result](asm-9.9.buildinfo): [19 :white_check_mark: ](asm-9.9.buildcompare) | | 1015K |
| [9.8](https://central.sonatype.com/artifact/org.ow2.asm/asm/9.8/pom) | [gradle jdk21](asm-9.8.buildspec) | [result](asm-9.8.buildinfo): [19 :white_check_mark: ](asm-9.8.buildcompare) | | 1010K |
| [9.7.1](https://central.sonatype.com/artifact/org.ow2.asm/asm/9.7.1/pom) | [gradle jdk21](asm-9.7.1.buildspec) | [result](asm-9.7.1.buildinfo): [14 :white_check_mark:  5 :warning:](asm-9.7.1.buildcompare) | 5 :rotating_light: | 1010K |
| [9.7](https://central.sonatype.com/artifact/org.ow2.asm/asm/9.7/pom) | [gradle jdk21](asm-9.7.buildspec) | [result](asm-9.7.buildinfo): [14 :white_check_mark:  5 :warning:](asm-9.7.buildcompare) | 5 :rotating_light: | 1006K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
