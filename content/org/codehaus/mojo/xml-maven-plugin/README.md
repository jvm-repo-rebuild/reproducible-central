[org.codehaus.mojo:xml-maven-plugin](https://central.sonatype.com/artifact/org.codehaus.mojo/xml-maven-plugin/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.codehaus.mojo:xml-maven-plugin](https://central.sonatype.com/artifact/org.codehaus.mojo/xml-maven-plugin/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/codehaus/mojo/xml-maven-plugin/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/codehaus/mojo/xml-maven-plugin/README.md)

Source code: [https://github.com/mojohaus/xml-maven-plugin.git](https://github.com/mojohaus/xml-maven-plugin.git)

rebuilding **2 releases** of org.codehaus.mojo:xml-maven-plugin:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 1, 0 had all their differences removed :recycle:, 1 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [1.2.0](https://central.sonatype.com/artifact/org.codehaus.mojo/xml-maven-plugin/1.2.0/pom) | [mvn jdk21](xml-maven-plugin-1.2.0.buildspec) | [result](xml-maven-plugin-1.2.0.buildinfo): [3 :white_check_mark:  1 :warning:](xml-maven-plugin-1.2.0.buildcompare) [:memo:](https://github.com/mojohaus/xml-maven-plugin/issues/155) | 1 :rotating_light: | 347K |
| [1.1.0](https://central.sonatype.com/artifact/org.codehaus.mojo/xml-maven-plugin/1.1.0/pom) | [mvn jdk17](xml-maven-plugin-1.1.0.buildspec) | [result](xml-maven-plugin-1.1.0.buildinfo): [3 :white_check_mark:  1 :warning:](xml-maven-plugin-1.1.0.buildcompare) [:mag:](xml-maven-plugin-1.1.0.diffoscope) | - | 336K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
