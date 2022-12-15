[org.apache.maven:maven](https://search.maven.org/artifact/org.apache.maven/maven/) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.maven:maven](https://search.maven.org/artifact/org.apache.maven/maven/)

Source code: [https://github.com/apache/maven.git](https://github.com/apache/maven.git)

<details><summary>This project defines 15 modules:</summary>

* [org.apache.maven:apache-maven](https://search.maven.org/artifact/org.apache.maven/apache-maven/)
* [org.apache.maven:maven](https://search.maven.org/artifact/org.apache.maven/maven/)
* [org.apache.maven:maven-artifact](https://search.maven.org/artifact/org.apache.maven/maven-artifact/)
* [org.apache.maven:maven-builder-support](https://search.maven.org/artifact/org.apache.maven/maven-builder-support/)
* [org.apache.maven:maven-compat](https://search.maven.org/artifact/org.apache.maven/maven-compat/)
* [org.apache.maven:maven-core](https://search.maven.org/artifact/org.apache.maven/maven-core/)
* [org.apache.maven:maven-embedder](https://search.maven.org/artifact/org.apache.maven/maven-embedder/)
* [org.apache.maven:maven-model](https://search.maven.org/artifact/org.apache.maven/maven-model/)
* [org.apache.maven:maven-model-builder](https://search.maven.org/artifact/org.apache.maven/maven-model-builder/)
* [org.apache.maven:maven-plugin-api](https://search.maven.org/artifact/org.apache.maven/maven-plugin-api/)
* [org.apache.maven:maven-repository-metadata](https://search.maven.org/artifact/org.apache.maven/maven-repository-metadata/)
* [org.apache.maven:maven-resolver-provider](https://search.maven.org/artifact/org.apache.maven/maven-resolver-provider/)
* [org.apache.maven:maven-settings](https://search.maven.org/artifact/org.apache.maven/maven-settings/)
* [org.apache.maven:maven-settings-builder](https://search.maven.org/artifact/org.apache.maven/maven-settings-builder/)
* [org.apache.maven:maven-slf4j-provider](https://search.maven.org/artifact/org.apache.maven/maven-slf4j-provider/)
</details>

rebuilding **7 releases** of org.apache.maven:maven:
- **4** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:),
- 3 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [4.0.0-alpha-3](https://search.maven.org/artifact/org.apache.maven/maven/4.0.0-alpha-3/pom) | | | |
| [4.0.0-alpha-2](https://search.maven.org/artifact/org.apache.maven/maven/4.0.0-alpha-2/pom) | | | |
| [3.8.6](https://search.maven.org/artifact/org.apache.maven/maven/3.8.6/pom) | [mvn jdk8 w](maven-3.8.6.buildspec) | [result](maven-3.8.6.buildinfo): [47 :heavy_check_mark: ](maven-3.8.6.buildcompare) | 27M |
| [3.8.5](https://search.maven.org/artifact/org.apache.maven/maven/3.8.5/pom) | [mvn jdk8 w](maven-3.8.5.buildspec) | [result](maven-3.8.5.buildinfo): [43 :heavy_check_mark:  4 :warning:](maven-3.8.5.buildcompare) [:mag:](maven-3.8.5.diffoscope) | 27M |
| [3.8.4](https://search.maven.org/artifact/org.apache.maven/maven/3.8.4/pom) | [mvn jdk8 w](maven-3.8.4.buildspec) | [result](maven-3.8.4.buildinfo): [47 :heavy_check_mark: ](maven-3.8.4.buildcompare) | 28M |
| [3.8.3](https://search.maven.org/artifact/org.apache.maven/maven/3.8.3/pom) | [mvn jdk8 w](maven-3.8.3.buildspec) | [result](maven-3.8.3.buildinfo): [47 :heavy_check_mark: ](maven-3.8.3.buildcompare) | 28M |
| [3.8.2](https://search.maven.org/artifact/org.apache.maven/maven/3.8.2/pom) | [mvn jdk8 w](maven-3.8.2.buildspec) | [result](maven-3.8.2.buildinfo): [47 :heavy_check_mark: ](maven-3.8.2.buildcompare) | 29M |
| [3.8.1](https://search.maven.org/artifact/org.apache.maven/maven/3.8.1/pom) | [mvn jdk8 w](maven-3.8.1.buildspec) | [result](maven-3.8.1.buildinfo): [17 :heavy_check_mark:  15 :warning:](maven-3.8.1.buildcompare) [:mag:](maven-3.8.1.diffoscope) [:memo:](https://issues.apache.org/jira/browse/MNG-7155) | 29M |
| [3.6.3](https://search.maven.org/artifact/org.apache.maven/maven/3.6.3/pom) | [mvn jdk8 w](maven-3.6.3.buildspec) | [result](apache-maven-3.6.3.buildinfo): [2 :heavy_check_mark:  30 :warning:](apache-maven-3.6.3.buildcompare) [:memo:](https://issues.apache.org/jira/browse/MNG-6859) | 29M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
