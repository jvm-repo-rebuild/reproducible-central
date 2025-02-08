[io.opentelemetry:opentelemetry-sdk](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/versions) RB check
=======

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

## Project: [io.opentelemetry:opentelemetry-sdk](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/versions) [![Reproducible Builds](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/jvm-repo-rebuild/reproducible-central/master/content/io/opentelemetry/java/badge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/io/opentelemetry/java/README.md)

Source code: [https://github.com/open-telemetry/opentelemetry-java.git](https://github.com/open-telemetry/opentelemetry-java.git)

<details><summary>This project defines 31 modules:</summary>

* [io.opentelemetry:opentelemetry-api](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-api/overview)
* [io.opentelemetry:opentelemetry-api-events](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-api-events/overview)
* [io.opentelemetry:opentelemetry-api-incubator](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-api-incubator/overview)
* [io.opentelemetry:opentelemetry-bom](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-bom/overview)
* [io.opentelemetry:opentelemetry-bom-alpha](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-bom-alpha/overview)
* [io.opentelemetry:opentelemetry-context](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-context/overview)
* [io.opentelemetry:opentelemetry-exporter-common](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-exporter-common/overview)
* [io.opentelemetry:opentelemetry-exporter-logging](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-exporter-logging/overview)
* [io.opentelemetry:opentelemetry-exporter-logging-otlp](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-exporter-logging-otlp/overview)
* [io.opentelemetry:opentelemetry-exporter-otlp](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-exporter-otlp/overview)
* [io.opentelemetry:opentelemetry-exporter-otlp-common](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-exporter-otlp-common/overview)
* [io.opentelemetry:opentelemetry-exporter-prometheus](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-exporter-prometheus/overview)
* [io.opentelemetry:opentelemetry-exporter-sender-grpc-managed-channel](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-exporter-sender-grpc-managed-channel/overview)
* [io.opentelemetry:opentelemetry-exporter-sender-jdk](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-exporter-sender-jdk/overview)
* [io.opentelemetry:opentelemetry-exporter-sender-okhttp](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-exporter-sender-okhttp/overview)
* [io.opentelemetry:opentelemetry-exporter-zipkin](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-exporter-zipkin/overview)
* [io.opentelemetry:opentelemetry-extension-incubator](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-extension-incubator/overview)
* [io.opentelemetry:opentelemetry-extension-kotlin](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-extension-kotlin/overview)
* [io.opentelemetry:opentelemetry-extension-trace-propagators](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-extension-trace-propagators/overview)
* [io.opentelemetry:opentelemetry-opencensus-shim](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-opencensus-shim/overview)
* [io.opentelemetry:opentelemetry-opentracing-shim](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-opentracing-shim/overview)
* [io.opentelemetry:opentelemetry-sdk](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/overview)
* [io.opentelemetry:opentelemetry-sdk-common](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk-common/overview)
* [io.opentelemetry:opentelemetry-sdk-extension-autoconfigure](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk-extension-autoconfigure/overview)
* [io.opentelemetry:opentelemetry-sdk-extension-autoconfigure-spi](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk-extension-autoconfigure-spi/overview)
* [io.opentelemetry:opentelemetry-sdk-extension-incubator](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk-extension-incubator/overview)
* [io.opentelemetry:opentelemetry-sdk-extension-jaeger-remote-sampler](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk-extension-jaeger-remote-sampler/overview)
* [io.opentelemetry:opentelemetry-sdk-logs](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk-logs/overview)
* [io.opentelemetry:opentelemetry-sdk-metrics](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk-metrics/overview)
* [io.opentelemetry:opentelemetry-sdk-testing](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk-testing/overview)
* [io.opentelemetry:opentelemetry-sdk-trace](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk-trace/overview)
</details>

rebuilding **14 releases** of io.opentelemetry:opentelemetry-sdk:
- **11** releases were found successfully **fully reproducible** (100% reproducible artifacts :white_check_mark:),
- 3 had issues (some unreproducible artifacts :warning:, see eventual :mag: diffoscope and/or :memo: issue tracker links):

| version | [build spec](/BUILDSPEC.md) | [result](https://reproducible-builds.org/docs/jvm/): reproducible? | size |
| -- | --------- | ------ | -- |
| [1.47.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.47.0/pom) | [gradle jdk17](opentelemetry-sdk-1.47.0.buildspec) | [result](opentelemetry-sdk-1.47.0.buildinfo): [83 :white_check_mark: ](opentelemetry-sdk-1.47.0.buildcompare) | 3.1M |
| [1.46.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.46.0/pom) | [gradle jdk17](opentelemetry-sdk-1.46.0.buildspec) | [result](opentelemetry-sdk-1.46.0.buildinfo): [83 :white_check_mark: ](opentelemetry-sdk-1.46.0.buildcompare) | 3.1M |
| [1.45.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.45.0/pom) | [gradle jdk17](opentelemetry-sdk-1.45.0.buildspec) | [result](opentelemetry-sdk-1.45.0.buildinfo): [83 :white_check_mark: ](opentelemetry-sdk-1.45.0.buildcompare) | 3.1M |
| [1.44.1](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.44.1/pom) | [gradle jdk17](opentelemetry-sdk-1.44.1.buildspec) | [result](opentelemetry-sdk-1.44.1.buildinfo): [83 :white_check_mark: ](opentelemetry-sdk-1.44.1.buildcompare) | 3.1M |
| [1.44.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.44.0/pom) | [gradle jdk17](opentelemetry-sdk-1.44.0.buildspec) | [result](opentelemetry-sdk-1.44.0.buildinfo): [83 :white_check_mark: ](opentelemetry-sdk-1.44.0.buildcompare) | 3.1M |
| [1.43.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.43.0/pom) | [gradle jdk17](opentelemetry-sdk-1.43.0.buildspec) | [result](opentelemetry-sdk-1.43.0.buildinfo): [83 :white_check_mark: ](opentelemetry-sdk-1.43.0.buildcompare) | 3.1M |
| [1.42.1](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.42.1/pom) | [gradle jdk17](opentelemetry-sdk-1.42.1.buildspec) | [result](opentelemetry-sdk-1.42.1.buildinfo): [83 :white_check_mark: ](opentelemetry-sdk-1.42.1.buildcompare) | 3.0M |
| [1.42.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.42.0/pom) | [gradle jdk17](opentelemetry-sdk-1.42.0.buildspec) | [result](opentelemetry-sdk-1.42.0.buildinfo): [84 :white_check_mark: ](opentelemetry-sdk-1.42.0.buildcompare) | 3.0M |
| [1.41.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.41.0/pom) | [gradle jdk17](opentelemetry-sdk-1.41.0.buildspec) | [result](opentelemetry-sdk-1.41.0.buildinfo): [83 :white_check_mark: ](opentelemetry-sdk-1.41.0.buildcompare) | 2.9M |
| [1.40.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.40.0/pom) | [gradle jdk17](opentelemetry-sdk-1.40.0.buildspec) | [result](opentelemetry-sdk-1.40.0.buildinfo): [83 :white_check_mark: ](opentelemetry-sdk-1.40.0.buildcompare) | 2.9M |
| [1.39.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.39.0/pom) | [gradle jdk17](opentelemetry-sdk-1.39.0.buildspec) | [result](opentelemetry-sdk-1.39.0.buildinfo): [83 :white_check_mark: ](opentelemetry-sdk-1.39.0.buildcompare) | 2.9M |
| [1.38.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.38.0/pom) | [gradle jdk17](opentelemetry-sdk-1.38.0.buildspec) | [result](opentelemetry-sdk-1.38.0.buildinfo): [30 :white_check_mark:  53 :warning:](opentelemetry-sdk-1.38.0.buildcompare) [:memo:](https://github.com/open-telemetry/opentelemetry-java/pull/6471) | 2.9M |
| [1.37.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.37.0/pom) | [gradle jdk17](opentelemetry-sdk-1.37.0.buildspec) | [result](opentelemetry-sdk-1.37.0.buildinfo): [30 :white_check_mark:  53 :warning:](opentelemetry-sdk-1.37.0.buildcompare) | 2.7M |
| [1.36.0](https://central.sonatype.com/artifact/io.opentelemetry/opentelemetry-sdk/1.36.0/pom) | [gradle jdk17](opentelemetry-sdk-1.36.0.buildspec) | [result](opentelemetry-sdk-1.36.0.buildinfo): [30 :white_check_mark:  56 :warning:](opentelemetry-sdk-1.36.0.buildcompare) [:memo:](https://github.com/open-telemetry/opentelemetry-java/issues/4488) | 2.7M |

<i>(size is calculated without javadoc, that has been excluded from reproducibility checks)</i>
