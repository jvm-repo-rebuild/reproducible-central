[com.sap.ai.sdk:sdk-parent](https://central.sonatype.com/artifact/com.sap.ai.sdk/sdk-parent/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [com.sap.ai.sdk:sdk-parent](https://central.sonatype.com/artifact/com.sap.ai.sdk/sdk-parent/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/com/sap/ai/sdk/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/com/sap/ai/sdk/README.md)

Source code: [https://github.com/SAP/ai-sdk-java.git](https://github.com/SAP/ai-sdk-java.git)

<details><summary>This project defines 6 modules:</summary>

* [com.sap.ai.sdk.foundationmodels:openai](https://central.sonatype.com/artifact/com.sap.ai.sdk.foundationmodels/openai/overview)
* [com.sap.ai.sdk:core](https://central.sonatype.com/artifact/com.sap.ai.sdk/core/overview)
* [com.sap.ai.sdk:document-grounding](https://central.sonatype.com/artifact/com.sap.ai.sdk/document-grounding/overview)
* [com.sap.ai.sdk:orchestration](https://central.sonatype.com/artifact/com.sap.ai.sdk/orchestration/overview)
* [com.sap.ai.sdk:prompt-registry](https://central.sonatype.com/artifact/com.sap.ai.sdk/prompt-registry/overview)
* [com.sap.ai.sdk:sdk-parent](https://central.sonatype.com/artifact/com.sap.ai.sdk/sdk-parent/overview)
</details>

rebuilding **2 releases** of com.sap.ai.sdk:sdk-parent:
- **0** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 2 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):
  - running [stabilize](doc/stabilize.md) on 2, 0 had all their differences removed :recycle:, 2 still had differences :rotating_light: or files not supported by stabilize :no_entry_sign:

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | [stabilize](https://github.com/google/oss-rebuild/blob/main/cmd/stabilize/README.md) | size |
| -- | --------- | ------ | ------ | -- |
| [1.10.0](https://central.sonatype.com/artifact/com.sap.ai.sdk/sdk-parent/1.10.0/pom) | [mvn jdk17](sdk-1.10.0.buildspec) | [result](sdk-parent-1.10.0.buildinfo): [11 :white_check_mark:  5 :warning:](sdk-parent-1.10.0.buildcompare) | 5 :rotating_light: | 3.9M |
| [1.9.0](https://central.sonatype.com/artifact/com.sap.ai.sdk/sdk-parent/1.9.0/pom) | | | |
| [1.8.0](https://central.sonatype.com/artifact/com.sap.ai.sdk/sdk-parent/1.8.0/pom) | | | |
| [1.7.0](https://central.sonatype.com/artifact/com.sap.ai.sdk/sdk-parent/1.7.0/pom) | [mvn jdk17](sdk-1.7.0.buildspec) | [result](sdk-parent-1.7.0.buildinfo): [11 :white_check_mark:  5 :warning:](sdk-parent-1.7.0.buildcompare) | 5 :rotating_light: | 3.3M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
