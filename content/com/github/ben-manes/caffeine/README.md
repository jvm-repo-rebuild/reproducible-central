[com.github.ben-manes.caffeine:caffeine](https://central.sonatype.com/artifact/com.github.ben-manes.caffeine/caffeine/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [com.github.ben-manes.caffeine:caffeine](https://central.sonatype.com/artifact/com.github.ben-manes.caffeine/caffeine/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/com/github/ben-manes/caffeine/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/com/github/ben-manes/caffeine/README.md)

Source code: [https://github.com/ben-manes/caffeine.git](https://github.com/ben-manes/caffeine.git)

<details><summary>This project defines 4 modules:</summary>

* [com.github.ben-manes.caffeine:caffeine](https://central.sonatype.com/artifact/com.github.ben-manes.caffeine/caffeine/overview)
* [com.github.ben-manes.caffeine:guava](https://central.sonatype.com/artifact/com.github.ben-manes.caffeine/guava/overview)
* [com.github.ben-manes.caffeine:jcache](https://central.sonatype.com/artifact/com.github.ben-manes.caffeine/jcache/overview)
* [com.github.ben-manes.caffeine:simulator](https://central.sonatype.com/artifact/com.github.ben-manes.caffeine/simulator/overview)
</details>

rebuilding **3 releases** of com.github.ben-manes.caffeine:caffeine:
- **1** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 2, 0 had all their differences removed :recycle:, 2 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [3.2.2](https://central.sonatype.com/artifact/com.github.ben-manes.caffeine/caffeine/3.2.2/pom) | [gradle jdk17](caffeine-cache-3.2.2.buildspec) | [result](caffeine-3.2.2.buildinfo): [15 :white_check_mark:  1 :warning:](caffeine-3.2.2.buildcompare) [:mag:](caffeine-3.2.2.diffoscope) | 1 :rotating_light: | 186M |
| [3.2.1](https://central.sonatype.com/artifact/com.github.ben-manes.caffeine/caffeine/3.2.1/pom) | [gradle jdk11](caffeine-cache-3.2.1.buildspec) | [result](caffeine-3.2.1.buildinfo): [15 :white_check_mark:  1 :warning:](caffeine-3.2.1.buildcompare) | 1 :rotating_light: | 186M |
| [3.2.0](https://central.sonatype.com/artifact/com.github.ben-manes.caffeine/caffeine/3.2.0/pom) | [gradle jdk21](caffeine-cache-3.2.0.buildspec) | [result](caffeine-3.2.0.buildinfo): [16 :white_check_mark: ](caffeine-3.2.0.buildcompare) | | 186M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
