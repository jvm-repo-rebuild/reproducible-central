[com.ongres.stringprep:stringprep-aggregator](https://central.sonatype.com/artifact/com.ongres.stringprep/stringprep-aggregator/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [com.ongres.stringprep:stringprep-aggregator](https://central.sonatype.com/artifact/com.ongres.stringprep/stringprep-aggregator/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/com/ongres/stringprep/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/com/ongres/stringprep/README.md)

Source code: [https://github.com/ongres/stringprep.git](https://github.com/ongres/stringprep.git)

<details><summary>This project defines 5 modules:</summary>

* [com.ongres.stringprep:nameprep](https://central.sonatype.com/artifact/com.ongres.stringprep/nameprep/overview)
* [com.ongres.stringprep:saslprep](https://central.sonatype.com/artifact/com.ongres.stringprep/saslprep/overview)
* [com.ongres.stringprep:stringprep](https://central.sonatype.com/artifact/com.ongres.stringprep/stringprep/overview)
* [com.ongres.stringprep:stringprep-aggregator](https://central.sonatype.com/artifact/com.ongres.stringprep/stringprep-aggregator/overview)
* [com.ongres.stringprep:stringprep-parent](https://central.sonatype.com/artifact/com.ongres.stringprep/stringprep-parent/overview)
</details>

rebuilding **2 releases** of com.ongres.stringprep:stringprep-aggregator:
- **1** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 1 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 1, 0 had all their differences removed :recycle:, 1 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [2.3](https://central.sonatype.com/artifact/com.ongres.stringprep/stringprep-aggregator/2.3/pom) | [mvn jdk25](stringprep-aggregator-2.3.buildspec) | [result](stringprep-aggregator-2.3.buildinfo): [8 :white_check_mark:  3 :warning:](stringprep-aggregator-2.3.buildcompare) | 3 :rotating_light: | 128K |
| [2.2](https://central.sonatype.com/artifact/com.ongres.stringprep/stringprep-aggregator/2.2/pom) | [mvn jdk21](stringprep-aggregator-2.2.buildspec) | [result](stringprep-aggregator-2.2.buildinfo): [21 :white_check_mark: ](stringprep-aggregator-2.2.buildcompare) | | 178K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
