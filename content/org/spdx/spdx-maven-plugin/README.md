[org.spdx:spdx-maven-plugin](https://central.sonatype.com/artifact/org.spdx/spdx-maven-plugin/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.spdx:spdx-maven-plugin](https://central.sonatype.com/artifact/org.spdx/spdx-maven-plugin/versions)

Source code: [https://github.com/spdx/spdx-maven-plugin.git](https://github.com/spdx/spdx-maven-plugin.git)

rebuilding **3 releases** of org.spdx:spdx-maven-plugin:
- **1** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [0.7.1](https://central.sonatype.com/artifact/org.spdx/spdx-maven-plugin/0.7.1/pom) | [mvn jdk17 w](spdx-maven-plugin-0.7.1.buildspec) | [result](spdx-maven-plugin-0.7.1.buildinfo): [3 :heavy_check_mark: ](spdx-maven-plugin-0.7.1.buildcompare) [:mag:](spdx-maven-plugin-0.7.1.diffoscope)
[1;31munexpected issue/diffoscope entry when ko=0[0m in [1mcontent/org/spdx/spdx-maven-plugin/spdx-maven-plugin-0.7.1.buildspec[0m
 | 216K |
| [0.7.0](https://central.sonatype.com/artifact/org.spdx/spdx-maven-plugin/0.7.0/pom) | [mvn jdk17 w](spdx-maven-plugin-0.7.0.buildspec) | [result](spdx-maven-plugin-0.7.0.buildinfo): [1 :heavy_check_mark:  1 :warning:](spdx-maven-plugin-0.7.0.buildcompare) [:mag:](spdx-maven-plugin-0.7.0.diffoscope) [:memo:](https://github.com/spdx/spdx-maven-plugin/pull/125) | 129K |
| [0.6.5](https://central.sonatype.com/artifact/org.spdx/spdx-maven-plugin/0.6.5/pom) | [mvn jdk13 w](spdx-maven-plugin-0.6.5.buildspec) | [result](spdx-maven-plugin-0.6.5.buildinfo): [1 :heavy_check_mark:  1 :warning:](spdx-maven-plugin-0.6.5.buildcompare) [:mag:](spdx-maven-plugin-0.6.5.diffoscope) | 126K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
