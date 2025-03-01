[org.apache.maven.resolver:maven-resolver](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.apache.maven.resolver:maven-resolver](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/apache/maven/resolver/maven-resolver/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/apache/maven/resolver/maven-resolver/README.md)

Source code: [https://github.com/apache/maven-resolver.git](https://github.com/apache/maven-resolver.git)

<details><summary>This project defines 33 modules:</summary>

* [org.apache.maven.resolver:maven-resolver](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/overview)
* [org.apache.maven.resolver:maven-resolver-api](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-api/overview)
* [org.apache.maven.resolver:maven-resolver-connector-basic](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-connector-basic/overview)
* [org.apache.maven.resolver:maven-resolver-generator-gnupg](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-generator-gnupg/overview)
* [org.apache.maven.resolver:maven-resolver-generator-sigstore](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-generator-sigstore/overview)
* [org.apache.maven.resolver:maven-resolver-impl](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-impl/overview)
* [org.apache.maven.resolver:maven-resolver-named-locks](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-named-locks/overview)
* [org.apache.maven.resolver:maven-resolver-named-locks-hazelcast](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-named-locks-hazelcast/overview)
* [org.apache.maven.resolver:maven-resolver-named-locks-ipc](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-named-locks-ipc/overview)
* [org.apache.maven.resolver:maven-resolver-named-locks-redisson](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-named-locks-redisson/overview)
* [org.apache.maven.resolver:maven-resolver-spi](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-spi/overview)
* [org.apache.maven.resolver:maven-resolver-supplier](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-supplier/overview)
* [org.apache.maven.resolver:maven-resolver-supplier-mvn3](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-supplier-mvn3/overview)
* [org.apache.maven.resolver:maven-resolver-supplier-mvn4](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-supplier-mvn4/overview)
* [org.apache.maven.resolver:maven-resolver-synccontext-global](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-synccontext-global/overview)
* [org.apache.maven.resolver:maven-resolver-synccontext-redisson](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-synccontext-redisson/overview)
* [org.apache.maven.resolver:maven-resolver-test-http](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-test-http/overview)
* [org.apache.maven.resolver:maven-resolver-test-util](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-test-util/overview)
* [org.apache.maven.resolver:maven-resolver-tools](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-tools/overview)
* [org.apache.maven.resolver:maven-resolver-transport-apache](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-apache/overview)
* [org.apache.maven.resolver:maven-resolver-transport-classpath](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-classpath/overview)
* [org.apache.maven.resolver:maven-resolver-transport-file](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-file/overview)
* [org.apache.maven.resolver:maven-resolver-transport-http](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-http/overview)
* [org.apache.maven.resolver:maven-resolver-transport-jdk](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-jdk/overview)
* [org.apache.maven.resolver:maven-resolver-transport-jdk-11](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-jdk-11/overview)
* [org.apache.maven.resolver:maven-resolver-transport-jdk-19](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-jdk-19/overview)
* [org.apache.maven.resolver:maven-resolver-transport-jdk-21](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-jdk-21/overview)
* [org.apache.maven.resolver:maven-resolver-transport-jdk-8](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-jdk-8/overview)
* [org.apache.maven.resolver:maven-resolver-transport-jdk-parent](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-jdk-parent/overview)
* [org.apache.maven.resolver:maven-resolver-transport-jetty](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-jetty/overview)
* [org.apache.maven.resolver:maven-resolver-transport-minio](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-minio/overview)
* [org.apache.maven.resolver:maven-resolver-transport-wagon](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-transport-wagon/overview)
* [org.apache.maven.resolver:maven-resolver-util](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver-util/overview)
</details>

rebuilding **49 releases** of org.apache.maven.resolver:maven-resolver:
- **47** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [2.0.7](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.7/pom) | [mvn jdk21](maven-resolver-2.0.7.buildspec) | [result](maven-resolver-2.0.7.buildinfo): [135 :white_check_mark: ](maven-resolver-2.0.7.buildcompare) | 16M |
| [2.0.6](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.6/pom) | [mvn jdk21](maven-resolver-2.0.6.buildspec) | [result](maven-resolver-2.0.6.buildinfo): [135 :white_check_mark: ](maven-resolver-2.0.6.buildcompare) | 16M |
| [2.0.5](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.5/pom) | [mvn jdk21](maven-resolver-2.0.5.buildspec) | [result](maven-resolver-2.0.5.buildinfo): [135 :white_check_mark: ](maven-resolver-2.0.5.buildcompare) | 16M |
| [2.0.4](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.4/pom) | [mvn jdk21](maven-resolver-2.0.4.buildspec) | [result](maven-resolver-2.0.4.buildinfo): [135 :white_check_mark: ](maven-resolver-2.0.4.buildcompare) | 16M |
| [2.0.3](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.3/pom) | [mvn jdk21](maven-resolver-2.0.3.buildspec) | [result](maven-resolver-2.0.3.buildinfo): [135 :white_check_mark: ](maven-resolver-2.0.3.buildcompare) | 16M |
| [2.0.2](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.2/pom) | [mvn jdk21](maven-resolver-2.0.2.buildspec) | [result](maven-resolver-2.0.2.buildinfo): [128 :white_check_mark: ](maven-resolver-2.0.2.buildcompare) | 15M |
| [2.0.1](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.1/pom) | [mvn jdk21](maven-resolver-2.0.1.buildspec) | [result](maven-resolver-2.0.1.buildinfo): [118 :white_check_mark: ](maven-resolver-2.0.1.buildcompare) | 14M |
| [2.0.0](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.0/pom) | [mvn jdk21](maven-resolver-2.0.0.buildspec) | [result](maven-resolver-2.0.0.buildinfo): [118 :white_check_mark: ](maven-resolver-2.0.0.buildcompare) | 14M |
| [2.0.0-alpha-11](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.0-alpha-11/pom) | [mvn jdk21](maven-resolver-2.0.0-alpha-11.buildspec) | [result](maven-resolver-2.0.0-alpha-11.buildinfo): [118 :white_check_mark: ](maven-resolver-2.0.0-alpha-11.buildcompare) | 14M |
| [2.0.0-alpha-10](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.0-alpha-10/pom) | [mvn jdk21](maven-resolver-2.0.0-alpha-10.buildspec) | [result](maven-resolver-2.0.0-alpha-10.buildinfo): [119 :white_check_mark: ](maven-resolver-2.0.0-alpha-10.buildcompare) | 14M |
| [2.0.0-alpha-8](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.0-alpha-8/pom) | [mvn jdk21](maven-resolver-2.0.0-alpha-8.buildspec) | [result](maven-resolver-2.0.0-alpha-8.buildinfo): [109 :white_check_mark: ](maven-resolver-2.0.0-alpha-8.buildcompare) | 14M |
| [2.0.0-alpha-7](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.0-alpha-7/pom) | [mvn jdk21](maven-resolver-2.0.0-alpha-7.buildspec) | [result](maven-resolver-2.0.0-alpha-7.buildinfo): [109 :white_check_mark: ](maven-resolver-2.0.0-alpha-7.buildcompare) | 13M |
| [2.0.0-alpha-6](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.0-alpha-6/pom) | [mvn jdk21](maven-resolver-2.0.0-alpha-6.buildspec) | [result](maven-resolver-2.0.0-alpha-6.buildinfo): [109 :white_check_mark: ](maven-resolver-2.0.0-alpha-6.buildcompare) | 13M |
| [2.0.0-alpha-5](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.0-alpha-5/pom) | [mvn jdk21](maven-resolver-2.0.0-alpha-5.buildspec) | [result](maven-resolver-2.0.0-alpha-5.buildinfo): [109 :white_check_mark: ](maven-resolver-2.0.0-alpha-5.buildcompare) | 13M |
| [2.0.0-alpha-3](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.0-alpha-3/pom) | [mvn jdk21](maven-resolver-2.0.0-alpha-3.buildspec) | [result](maven-resolver-2.0.0-alpha-3.buildinfo): [99 :white_check_mark: ](maven-resolver-2.0.0-alpha-3.buildcompare) | 13M |
| [2.0.0-alpha-2](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.0-alpha-2/pom) | [mvn jdk21](maven-resolver-2.0.0-alpha-2.buildspec) | [result](maven-resolver-2.0.0-alpha-2.buildinfo): [109 :white_check_mark: ](maven-resolver-2.0.0-alpha-2.buildcompare) | 13M |
| [2.0.0-alpha-1](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/2.0.0-alpha-1/pom) | [mvn jdk17](maven-resolver-2.0.0-alpha-1.buildspec) | [result](maven-resolver-2.0.0-alpha-1.buildinfo): [99 :white_check_mark: ](maven-resolver-2.0.0-alpha-1.buildcompare) | 13M |
| [1.9.22](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.22/pom) | [mvn jdk21](maven-resolver-1.9.22.buildspec) | [result](maven-resolver-1.9.22.buildinfo): [75 :white_check_mark: ](maven-resolver-1.9.22.buildcompare) | 13M |
| [1.9.21](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.21/pom) | [mvn jdk21](maven-resolver-1.9.21.buildspec) | [result](maven-resolver-1.9.21.buildinfo): [75 :white_check_mark: ](maven-resolver-1.9.21.buildcompare) | 12M |
| [1.9.20](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.20/pom) | [mvn jdk21](maven-resolver-1.9.20.buildspec) | [result](maven-resolver-1.9.20.buildinfo): [75 :white_check_mark: ](maven-resolver-1.9.20.buildcompare) | 12M |
| [1.9.19](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.19/pom) | [mvn jdk21](maven-resolver-1.9.19.buildspec) | [result](maven-resolver-1.9.19.buildinfo): [76 :white_check_mark: ](maven-resolver-1.9.19.buildcompare) | 12M |
| [1.9.18](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.18/pom) | [mvn jdk21](maven-resolver-1.9.18.buildspec) | [result](maven-resolver-1.9.18.buildinfo): [76 :white_check_mark: ](maven-resolver-1.9.18.buildcompare) | 12M |
| [1.9.17](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.17/pom) | [mvn jdk21](maven-resolver-1.9.17.buildspec) | [result](maven-resolver-1.9.17.buildinfo): [76 :white_check_mark: ](maven-resolver-1.9.17.buildcompare) | 12M |
| [1.9.16](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.16/pom) | [mvn jdk17](maven-resolver-1.9.16.buildspec) | [result](maven-resolver-1.9.16.buildinfo): [76 :white_check_mark: ](maven-resolver-1.9.16.buildcompare) | 12M |
| [1.9.15](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.15/pom) | [mvn jdk17](maven-resolver-1.9.15.buildspec) | [result](maven-resolver-1.9.15.buildinfo): [76 :white_check_mark: ](maven-resolver-1.9.15.buildcompare) | 12M |
| [1.9.14](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.14/pom) | [mvn jdk17](maven-resolver-1.9.14.buildspec) | [result](maven-resolver-1.9.14.buildinfo): [71 :white_check_mark: ](maven-resolver-1.9.14.buildcompare) | 12M |
| [1.9.13](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.13/pom) | [mvn jdk17](maven-resolver-1.9.13.buildspec) | [result](maven-resolver-1.9.13.buildinfo): [43 :white_check_mark: ](maven-resolver-1.9.13.buildcompare) | 11M |
| [1.9.12](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.12/pom) | [mvn jdk17](maven-resolver-1.9.12.buildspec) | [result](maven-resolver-1.9.12.buildinfo): [43 :white_check_mark: ](maven-resolver-1.9.12.buildcompare) | 11M |
| [1.9.11](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.11/pom) | [mvn jdk17](maven-resolver-1.9.11.buildspec) | [result](maven-resolver-1.9.11.buildinfo): [42 :white_check_mark:  1 :warning:](maven-resolver-1.9.11.buildcompare) [:mag:](maven-resolver-1.9.11.diffoscope) | 11M |
| [1.9.10](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.10/pom) | [mvn jdk17](maven-resolver-1.9.10.buildspec) | [result](maven-resolver-1.9.10.buildinfo): [42 :white_check_mark: ](maven-resolver-1.9.10.buildcompare) | 3.5M |
| [1.9.8](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.8/pom) | [mvn jdk17](maven-resolver-1.9.8.buildspec) | [result](maven-resolver-1.9.8.buildinfo): [42 :white_check_mark: ](maven-resolver-1.9.8.buildcompare) | 3.5M |
| [1.9.7](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.7/pom) | [mvn jdk17](maven-resolver-1.9.7.buildspec) | [result](maven-resolver-1.9.7.buildinfo): [42 :white_check_mark: ](maven-resolver-1.9.7.buildcompare) | 3.4M |
| [1.9.6](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.6/pom) | [mvn jdk17](maven-resolver-1.9.6.buildspec) | [result](maven-resolver-1.9.6.buildinfo): [42 :white_check_mark: ](maven-resolver-1.9.6.buildcompare) | 3.4M |
| [1.9.5](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.5/pom) | [mvn jdk17](maven-resolver-1.9.5.buildspec) | [result](maven-resolver-1.9.5.buildinfo): [42 :white_check_mark: ](maven-resolver-1.9.5.buildcompare) | 3.4M |
| [1.9.4](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.4/pom) | [mvn jdk17](maven-resolver-1.9.4.buildspec) | [result](maven-resolver-1.9.4.buildinfo): [42 :white_check_mark: ](maven-resolver-1.9.4.buildcompare) | 3.4M |
| [1.9.2](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.2/pom) | [mvn jdk17](maven-resolver-1.9.2.buildspec) | [result](maven-resolver-1.9.2.buildinfo): [42 :white_check_mark: ](maven-resolver-1.9.2.buildcompare) | 3.4M |
| [1.9.1](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.1/pom) | [mvn jdk17](maven-resolver-1.9.1.buildspec) | [result](maven-resolver-1.9.1.buildinfo): [42 :white_check_mark: ](maven-resolver-1.9.1.buildcompare) | 3.4M |
| [1.9.0](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.9.0/pom) | [mvn jdk17](maven-resolver-1.9.0.buildspec) | [result](maven-resolver-1.9.0.buildinfo): [42 :white_check_mark: ](maven-resolver-1.9.0.buildcompare) | 3.4M |
| [1.8.2](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.8.2/pom) | [mvn jdk8 w](maven-resolver-1.8.2.buildspec) | [result](maven-resolver-1.8.2.buildinfo): [42 :white_check_mark: ](maven-resolver-1.8.2.buildcompare) | 3.2M |
| [1.8.1](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.8.1/pom) | [mvn jdk8 w](maven-resolver-1.8.1.buildspec) | [result](maven-resolver-1.8.1.buildinfo): [42 :white_check_mark: ](maven-resolver-1.8.1.buildcompare) | 3.2M |
| [1.8.0](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.8.0/pom) | [mvn jdk8 w](maven-resolver-1.8.0.buildspec) | [result](maven-resolver-1.8.0.buildinfo): [42 :white_check_mark: ](maven-resolver-1.8.0.buildcompare) | 3.2M |
| [1.7.3](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.7.3/pom) | [mvn jdk8 w](maven-resolver-1.7.3.buildspec) | [result](maven-resolver-1.7.3.buildinfo): [42 :white_check_mark: ](maven-resolver-1.7.3.buildcompare) | 3.0M |
| [1.7.2](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.7.2/pom) | [mvn jdk8 w](maven-resolver-1.7.2.buildspec) | [result](maven-resolver-1.7.2.buildinfo): [42 :white_check_mark: ](maven-resolver-1.7.2.buildcompare) | 3.0M |
| [1.7.1](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.7.1/pom) | [mvn jdk8 w](maven-resolver-1.7.1.buildspec) | [result](maven-resolver-1.7.1.buildinfo): [42 :white_check_mark: ](maven-resolver-1.7.1.buildcompare) | 3.0M |
| [1.7.0](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.7.0/pom) | [mvn jdk8 w](maven-resolver-1.7.0.buildspec) | [result](maven-resolver-1.7.0.buildinfo): [42 :white_check_mark: ](maven-resolver-1.7.0.buildcompare) | 3.0M |
| [1.6.3](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.6.3/pom) | [mvn jdk8 w](maven-resolver-1.6.3.buildspec) | [result](maven-resolver-synccontext-redisson-1.6.3.buildinfo): [39 :white_check_mark: ](maven-resolver-synccontext-redisson-1.6.3.buildcompare) | 2.8M |
| [1.6.2](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.6.2/pom) | [mvn jdk8 w](maven-resolver-1.6.2.buildspec) | [result](maven-resolver-synccontext-redisson-1.6.2.buildinfo): [39 :white_check_mark: ](maven-resolver-synccontext-redisson-1.6.2.buildcompare) | 2.8M |
| [1.6.1](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.6.1/pom) | [mvn jdk8 w](maven-resolver-1.6.1.buildspec) | [result](maven-resolver-synccontext-redisson-1.6.1.buildinfo): [39 :white_check_mark: ](maven-resolver-synccontext-redisson-1.6.1.buildcompare) | 2.8M |
| [1.4.2](https://central.sonatype.com/artifact/org.apache.maven.resolver/maven-resolver/1.4.2/pom) | [mvn jdk8 w](maven-resolver-1.4.2.buildspec) | [result](maven-resolver-transport-wagon-1.4.2.buildinfo): [23 :white_check_mark:  10 :warning:](maven-resolver-transport-wagon-1.4.2.buildcompare) [:memo:](https://issues.apache.org/jira/browse/MRESOLVER-137) | 2.7M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
