[org.codehaus.plexus:plexus-classworlds](https://central.sonatype.com/artifact/org.codehaus.plexus/plexus-classworlds/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.codehaus.plexus:plexus-classworlds](https://central.sonatype.com/artifact/org.codehaus.plexus/plexus-classworlds/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/codehaus/plexus/plexus-classworlds/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/codehaus/plexus/plexus-classworlds/README.md)

Source code: [https://github.com/codehaus-plexus/plexus-classworlds.git](https://github.com/codehaus-plexus/plexus-classworlds.git)

rebuilding **4 releases** of org.codehaus.plexus:plexus-classworlds:
- **3** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 1 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 1, 0 had all their differences removed :recycle:, 1 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [2.9.0](https://central.sonatype.com/artifact/org.codehaus.plexus/plexus-classworlds/2.9.0/pom) | [mvn jdk23](plexus-classworlds-2.9.0.buildspec) | [result](plexus-classworlds-2.9.0.buildinfo): [4 :white_check_mark: ](plexus-classworlds-2.9.0.buildcompare) | | 235K |
| [2.8.0](https://central.sonatype.com/artifact/org.codehaus.plexus/plexus-classworlds/2.8.0/pom) | [mvn jdk21](plexus-classworlds-2.8.0.buildspec) | [result](plexus-classworlds-2.8.0.buildinfo): [4 :white_check_mark: ](plexus-classworlds-2.8.0.buildcompare) | | 232K |
| [2.7.0](https://central.sonatype.com/artifact/org.codehaus.plexus/plexus-classworlds/2.7.0/pom) | [mvn jdk8](plexus-classworlds-2.7.0.buildspec) | [result](plexus-classworlds-2.7.0.buildinfo): [4 :white_check_mark: ](plexus-classworlds-2.7.0.buildcompare) | | 235K |
| [2.6.0](https://central.sonatype.com/artifact/org.codehaus.plexus/plexus-classworlds/2.6.0/pom) | [mvn jdk8 w](plexus-classworlds-2.6.0.buildspec) | [result](plexus-classworlds-2.6.0.buildinfo): [1 :white_check_mark:  2 :warning:](plexus-classworlds-2.6.0.buildcompare) [:memo:](https://github.com/codehaus-plexus/plexus-classworlds/commit/f11ff447a0f535705c2f2b6a1cf909208392b60d) | 1 :recycle: 1 :rotating_light: | 112K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
