[org.eclipse.transformer:org.eclipse.transformer.parent](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.parent/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [org.eclipse.transformer:org.eclipse.transformer.parent](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.parent/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/org/eclipse/transformer/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/org/eclipse/transformer/README.md)

Source code: [https://github.com/eclipse/transformer.git](https://github.com/eclipse/transformer.git)

<details><summary>This project defines 7 modules:</summary>

* [org.eclipse.transformer:org.eclipse.transformer](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer/overview)
* [org.eclipse.transformer:org.eclipse.transformer.bnd.analyzer](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.bnd.analyzer/overview)
* [org.eclipse.transformer:org.eclipse.transformer.cli](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.cli/overview)
* [org.eclipse.transformer:org.eclipse.transformer.jakarta](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.jakarta/overview)
* [org.eclipse.transformer:org.eclipse.transformer.maven](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.maven/overview)
* [org.eclipse.transformer:org.eclipse.transformer.parent](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.parent/overview)
* [org.eclipse.transformer:transformer-maven-plugin](https://central.sonatype.com/artifact/org.eclipse.transformer/transformer-maven-plugin/overview)
</details>

rebuilding **4 releases** of org.eclipse.transformer:org.eclipse.transformer.parent:
- **3** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 1 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [1.0.0](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.parent/1.0.0/pom) | [mvn jdk17](eclipse-transformer-1.0.0.buildspec) | [result](org.eclipse.transformer.bnd.analyzer-1.0.0.buildinfo): [17 :white_check_mark: ](org.eclipse.transformer.bnd.analyzer-1.0.0.buildcompare) | | 1.4M |
| [0.5.0](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.parent/0.5.0/pom) | [mvn jdk17](eclipse-transformer-0.5.0.buildspec) | [result](transformer-maven-plugin-0.5.0.buildinfo): [ 3 :warning:](transformer-maven-plugin-0.5.0.buildcompare) | - | 81K |
| [0.4.0](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.parent/0.4.0/pom) | [mvn jdk17](eclipse-transformer-0.4.0.buildspec) | [result](transformer-maven-plugin-0.4.0.buildinfo): [14 :white_check_mark: ](transformer-maven-plugin-0.4.0.buildcompare) | | 961K |
| [0.2.0](https://central.sonatype.com/artifact/org.eclipse.transformer/org.eclipse.transformer.parent/0.2.0/pom) | [mvn jdk8](eclipse-transformer-0.2.0.buildspec) | [result](org.eclipse.transformer.parent-0.2.0.buildinfo): [11 :white_check_mark: ](org.eclipse.transformer.parent-0.2.0.buildcompare) | | 829K |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
