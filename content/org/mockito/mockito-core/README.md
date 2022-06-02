[org.mockito:mockito-core](https://search.maven.org/artifact/org.mockito/mockito-core/) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.mockito:mockito-core](https://search.maven.org/artifact/org.mockito/mockito-core/)

Source code: [https://github.com/mockito/mockito.git](https://github.com/mockito/mockito.git)

<details><summary>This project defines 7 modules:</summary>

* [org.mockito:mockito-android](https://search.maven.org/artifact/org.mockito/mockito-android/)
* [org.mockito:mockito-bom](https://search.maven.org/artifact/org.mockito/mockito-bom/)
* [org.mockito:mockito-core](https://search.maven.org/artifact/org.mockito/mockito-core/)
* [org.mockito:mockito-errorprone](https://search.maven.org/artifact/org.mockito/mockito-errorprone/)
* [org.mockito:mockito-inline](https://search.maven.org/artifact/org.mockito/mockito-inline/)
* [org.mockito:mockito-junit-jupiter](https://search.maven.org/artifact/org.mockito/mockito-junit-jupiter/)
* [org.mockito:mockito-proxy](https://search.maven.org/artifact/org.mockito/mockito-proxy/)
</details>

rebuilding **3 releases** of org.mockito:mockito-core:
- **1** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [4.6.1](https://search.maven.org/artifact/org.mockito/mockito-core/4.6.1/pom) | | | |
| [4.6.0](https://search.maven.org/artifact/org.mockito/mockito-core/4.6.0/pom) | [gradle](mockito-4.6.0.buildspec) | [result](mockito-core-4.6.0.buildinfo): [19 :heavy_check_mark: ](mockito-core-4.6.0.buildcompare) | 1.2M |
| [4.5.1](https://search.maven.org/artifact/org.mockito/mockito-core/4.5.1/pom) | [gradle](mockito-4.5.1.buildspec) | [result](mockito-core-4.5.1.buildinfo): [9 :heavy_check_mark:  10 :warning:](mockito-core-4.5.1.buildcompare) [:mag:](mockito-core-4.5.1.diffoscope) [:memo:](https://github.com/mockito/mockito/pull/2642) | 1.2M |
| [4.5.0](https://search.maven.org/artifact/org.mockito/mockito-core/4.5.0/pom) | | | |
| [4.4.0](https://search.maven.org/artifact/org.mockito/mockito-core/4.4.0/pom) | [gradle](mockito-4.4.0.buildspec) | [result](mockito-core-4.4.0.buildinfo): [7 :heavy_check_mark:  12 :warning:](mockito-core-4.4.0.buildcompare) [:mag:](mockito-core-4.4.0.diffoscope) | 1.2M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
