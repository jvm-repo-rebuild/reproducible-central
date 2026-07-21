[org.clojure:clojure](https://central.sonatype.com/artifact/org.clojure/clojure/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.clojure:clojure](https://central.sonatype.com/artifact/org.clojure/clojure/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/clojure/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/clojure/README.md)

Source code: [https://github.com/clojure/clojure.git](https://github.com/clojure/clojure.git)

rebuilding **5 releases** of org.clojure:clojure:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 5 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 5, 0 had all their differences removed :recycle:, 5 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [1.13.0-alpha5](https://central.sonatype.com/artifact/org.clojure/clojure/1.13.0-alpha5/pom) | | | |
| [1.13.0-alpha4](https://central.sonatype.com/artifact/org.clojure/clojure/1.13.0-alpha4/pom) | [mvn jdk8](clojure-1.13.0-alpha4.buildspec) | [result](clojure-1.13.0-alpha4.buildinfo): [1 :white_check_mark:  3 :warning:](clojure-1.13.0-alpha4.buildcompare) [:memo:](https://clojure.atlassian.net/browse/CLJ-2959) | 2 :recycle: 1 :rotating_light: | 5.8M |
| [1.13.0-alpha3](https://central.sonatype.com/artifact/org.clojure/clojure/1.13.0-alpha3/pom) | [mvn jdk8](clojure-1.13.0-alpha3.buildspec) | [result](clojure-1.13.0-alpha3.buildinfo): [1 :white_check_mark:  3 :warning:](clojure-1.13.0-alpha3.buildcompare) [:memo:](https://clojure.atlassian.net/browse/CLJ-2959) | 2 :recycle: 1 :rotating_light: | 5.8M |
| [1.13.0-alpha2](https://central.sonatype.com/artifact/org.clojure/clojure/1.13.0-alpha2/pom) | [mvn jdk8](clojure-1.13.0-alpha2.buildspec) | [result](clojure-1.13.0-alpha2.buildinfo): [1 :white_check_mark:  3 :warning:](clojure-1.13.0-alpha2.buildcompare) [:memo:](https://clojure.atlassian.net/browse/CLJ-2959) | 2 :recycle: 1 :rotating_light: | 5.8M |
| [1.13.0-alpha1](https://central.sonatype.com/artifact/org.clojure/clojure/1.13.0-alpha1/pom) | [mvn jdk8](clojure-1.13.0-alpha1.buildspec) | [result](clojure-1.13.0-alpha1.buildinfo): [3 :white_check_mark:  1 :warning:](clojure-1.13.0-alpha1.buildcompare) [:memo:](https://clojure.atlassian.net/browse/CLJ-2959) | 1 :rotating_light: | 5.8M |
| [1.12.5](https://central.sonatype.com/artifact/org.clojure/clojure/1.12.5/pom) | [mvn jdk8](clojure-1.12.5.buildspec) | [result](clojure-1.12.5.buildinfo): [1 :white_check_mark:  3 :warning:](clojure-1.12.5.buildcompare) [:mag:](clojure-1.12.5.diffoscope) | 2 :recycle: 1 :rotating_light: | 5.8M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
