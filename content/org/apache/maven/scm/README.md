[org.apache.maven.scm:maven-scm](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm/) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.maven.scm:maven-scm](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm/)

Source code: [https://github.com/apache/maven-resolver.git](https://github.com/apache/maven-resolver.git)

<details><summary>This project defines 35 modules:</summary>

* [org.apache.maven.plugins:maven-scm-plugin](https://search.maven.org/artifact/org.apache.maven.plugins/maven-scm-plugin/)
* [org.apache.maven.scm:maven-scm](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm/)
* [org.apache.maven.scm:maven-scm-api](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-api/)
* [org.apache.maven.scm:maven-scm-client](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-client/)
* [org.apache.maven.scm:maven-scm-manager-plexus](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-manager-plexus/)
* [org.apache.maven.scm:maven-scm-managers](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-managers/)
* [org.apache.maven.scm:maven-scm-provider-accurev](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-accurev/)
* [org.apache.maven.scm:maven-scm-provider-bazaar](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-bazaar/)
* [org.apache.maven.scm:maven-scm-provider-clearcase](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-clearcase/)
* [org.apache.maven.scm:maven-scm-provider-cvs-commons](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-cvs-commons/)
* [org.apache.maven.scm:maven-scm-provider-cvsexe](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-cvsexe/)
* [org.apache.maven.scm:maven-scm-provider-cvsjava](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-cvsjava/)
* [org.apache.maven.scm:maven-scm-provider-cvstest](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-cvstest/)
* [org.apache.maven.scm:maven-scm-provider-git-commons](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-git-commons/)
* [org.apache.maven.scm:maven-scm-provider-gitexe](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-gitexe/)
* [org.apache.maven.scm:maven-scm-provider-gittest](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-gittest/)
* [org.apache.maven.scm:maven-scm-provider-hg](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-hg/)
* [org.apache.maven.scm:maven-scm-provider-integrity](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-integrity/)
* [org.apache.maven.scm:maven-scm-provider-jazz](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-jazz/)
* [org.apache.maven.scm:maven-scm-provider-jgit](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-jgit/)
* [org.apache.maven.scm:maven-scm-provider-local](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-local/)
* [org.apache.maven.scm:maven-scm-provider-perforce](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-perforce/)
* [org.apache.maven.scm:maven-scm-provider-starteam](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-starteam/)
* [org.apache.maven.scm:maven-scm-provider-svn-commons](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-svn-commons/)
* [org.apache.maven.scm:maven-scm-provider-svnexe](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-svnexe/)
* [org.apache.maven.scm:maven-scm-provider-svntest](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-svntest/)
* [org.apache.maven.scm:maven-scm-provider-synergy](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-synergy/)
* [org.apache.maven.scm:maven-scm-provider-tfs](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-tfs/)
* [org.apache.maven.scm:maven-scm-provider-vss](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-provider-vss/)
* [org.apache.maven.scm:maven-scm-providers](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-providers/)
* [org.apache.maven.scm:maven-scm-providers-cvs](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-providers-cvs/)
* [org.apache.maven.scm:maven-scm-providers-git](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-providers-git/)
* [org.apache.maven.scm:maven-scm-providers-standard](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-providers-standard/)
* [org.apache.maven.scm:maven-scm-providers-svn](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-providers-svn/)
* [org.apache.maven.scm:maven-scm-test](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm-test/)
</details>

rebuilding **5 releases** of org.apache.maven.scm:maven-scm:
- **5** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:),
- 0 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [2.0.0-M1](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm/2.0.0-M1/pom) | [mvn jdk8 w](maven-scm-2.0.0-M1.buildspec) | [result](maven-scm-2.0.0-M1.buildinfo): [55 :heavy_check_mark: ](maven-scm-2.0.0-M1.buildcompare) | 4.3M |
| [1.13.0](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm/1.13.0/pom) | [mvn jdk8 w](maven-scm-1.13.0.buildspec) | [result](maven-scm-1.13.0.buildinfo): [99 :heavy_check_mark: ](maven-scm-1.13.0.buildcompare) | 9.3M |
| [1.12.2](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm/1.12.2/pom) | [mvn jdk8 w](maven-scm-1.12.2.buildspec) | [result](maven-scm-1.12.2.buildinfo): [99 :heavy_check_mark: ](maven-scm-1.12.2.buildcompare) | 9.3M |
| [1.12.0](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm/1.12.0/pom) | [mvn jdk7 w](maven-scm-1.12.0.buildspec) | [result](maven-scm-1.12.0.buildinfo): [99 :heavy_check_mark: ](maven-scm-1.12.0.buildcompare) | 9.3M |
| [1.11.3](https://search.maven.org/artifact/org.apache.maven.scm/maven-scm/1.11.3/pom) | [mvn jdk7 w](maven-scm-1.11.3.buildspec) | [result](maven-scm-1.11.3.buildinfo): [99 :heavy_check_mark: ](maven-scm-1.11.3.buildcompare) | 9.3M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
