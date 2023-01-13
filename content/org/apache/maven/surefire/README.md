[org.apache.maven.surefire:surefire](https://search.maven.org/artifact/org.apache.maven.surefire/surefire/) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.maven.surefire:surefire](https://search.maven.org/artifact/org.apache.maven.surefire/surefire/)

Source code: [https://github.com/apache/maven-surefire.git](https://github.com/apache/maven-surefire.git)

<details><summary>This project defines 25 modules:</summary>

* [org.apache.maven.plugins:maven-failsafe-plugin](https://search.maven.org/artifact/org.apache.maven.plugins/maven-failsafe-plugin/)
* [org.apache.maven.plugins:maven-surefire-plugin](https://search.maven.org/artifact/org.apache.maven.plugins/maven-surefire-plugin/)
* [org.apache.maven.plugins:maven-surefire-report-plugin](https://search.maven.org/artifact/org.apache.maven.plugins/maven-surefire-report-plugin/)
* [org.apache.maven.surefire:common-java5](https://search.maven.org/artifact/org.apache.maven.surefire/common-java5/)
* [org.apache.maven.surefire:common-junit3](https://search.maven.org/artifact/org.apache.maven.surefire/common-junit3/)
* [org.apache.maven.surefire:common-junit4](https://search.maven.org/artifact/org.apache.maven.surefire/common-junit4/)
* [org.apache.maven.surefire:common-junit48](https://search.maven.org/artifact/org.apache.maven.surefire/common-junit48/)
* [org.apache.maven.surefire:maven-surefire-common](https://search.maven.org/artifact/org.apache.maven.surefire/maven-surefire-common/)
* [org.apache.maven.surefire:surefire](https://search.maven.org/artifact/org.apache.maven.surefire/surefire/)
* [org.apache.maven.surefire:surefire-api](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-api/)
* [org.apache.maven.surefire:surefire-booter](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-booter/)
* [org.apache.maven.surefire:surefire-extensions-api](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-extensions-api/)
* [org.apache.maven.surefire:surefire-extensions-spi](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-extensions-spi/)
* [org.apache.maven.surefire:surefire-grouper](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-grouper/)
* [org.apache.maven.surefire:surefire-junit-platform](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-junit-platform/)
* [org.apache.maven.surefire:surefire-junit3](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-junit3/)
* [org.apache.maven.surefire:surefire-junit4](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-junit4/)
* [org.apache.maven.surefire:surefire-junit47](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-junit47/)
* [org.apache.maven.surefire:surefire-logger-api](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-logger-api/)
* [org.apache.maven.surefire:surefire-providers](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-providers/)
* [org.apache.maven.surefire:surefire-report-parser](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-report-parser/)
* [org.apache.maven.surefire:surefire-shadefire](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-shadefire/)
* [org.apache.maven.surefire:surefire-shared-utils](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-shared-utils/)
* [org.apache.maven.surefire:surefire-testng](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-testng/)
* [org.apache.maven.surefire:surefire-testng-utils](https://search.maven.org/artifact/org.apache.maven.surefire/surefire-testng-utils/)
</details>

rebuilding **4 releases** of org.apache.maven.surefire:surefire:
- **1** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:),
- 3 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [3.0.0-M8](https://search.maven.org/artifact/org.apache.maven.surefire/surefire/3.0.0-M8/pom) | [mvn jdk8 w](surefire-3.0.0-M8.buildspec) | [result](surefire-3.0.0-M8.buildinfo): [75 :heavy_check_mark: ](surefire-3.0.0-M8.buildcompare) | 10M |
| [3.0.0-M7](https://search.maven.org/artifact/org.apache.maven.surefire/surefire/3.0.0-M7/pom) | [mvn jdk11](surefire-3.0.0-M7.buildspec) | [result](surefire-3.0.0-M7.buildinfo): [39 :heavy_check_mark:  36 :warning:](surefire-3.0.0-M7.buildcompare) [:mag:](surefire-3.0.0-M7.diffoscope) | 10M |
| [3.0.0-M6](https://search.maven.org/artifact/org.apache.maven.surefire/surefire/3.0.0-M6/pom) | [mvn jdk8 w](surefire-3.0.0-M6.buildspec) | [result](surefire-3.0.0-M6.buildinfo): [38 :heavy_check_mark:  37 :warning:](surefire-3.0.0-M6.buildcompare) [:mag:](surefire-3.0.0-M6.diffoscope) [:memo:](https://issues.apache.org/jira/browse/SUREFIRE-1802) | 10M |
| [3.0.0-M5](https://search.maven.org/artifact/org.apache.maven.surefire/surefire/3.0.0-M5/pom) | [mvn jdk8 w](surefire-3.0.0-M5.buildspec) | [result](surefire-shared-utils-3.0.0-M5.buildinfo): [45 :heavy_check_mark:  5 :warning:](surefire-shared-utils-3.0.0-M5.buildcompare) [:memo:](https://issues.apache.org/jira/browse/SUREFIRE-1802) | 8.9M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
