New Releases To Add
===================

<!-- BEGIN GENERATED ADD OK -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20241231193512 --> [bom-newest](../content/com/intellectualsites/bom/bom-newest/README.md) | [1.51](../content/com/intellectualsites/bom/bom-newest/bom-newest-1.51.buildspec) :white_check_mark: | [1.52](../content/com/intellectualsites/bom/bom-newest/bom-newest-1.52.buildspec) | `bin/add-new-release.sh content/com/intellectualsites/bom/bom-newest/bom-newest-1.51.buildspec 1.52` |
| <!-- 20241231183435 --> [jpmml-converter](../content/org/jpmml/jpmml-converter/README.md) | [1.5.10](../content/org/jpmml/jpmml-converter/jpmml-converter-1.5.10.buildspec) :white_check_mark: | [1.5.11](../content/org/jpmml/jpmml-converter/jpmml-converter-1.5.11.buildspec) | `bin/add-new-release.sh content/org/jpmml/jpmml-converter/jpmml-converter-1.5.10.buildspec 1.5.11` |
| <!-- 20241231124754 --> [jpmml-evaluator](../content/org/jpmml/jpmml-evaluator/README.md) | [1.6.8](../content/org/jpmml/jpmml-evaluator/jpmml-evaluator-1.6.8.buildspec) :white_check_mark: | [1.6.9](../content/org/jpmml/jpmml-evaluator/jpmml-evaluator-1.6.9.buildspec) | `bin/add-new-release.sh content/org/jpmml/jpmml-evaluator/jpmml-evaluator-1.6.8.buildspec 1.6.9` |
| <!-- 20241231111121 --> [jreleaser](../content/org/jreleaser/README.md) | [1.15.0](../content/org/jreleaser/jreleaser-1.15.0.buildspec) :white_check_mark: | [1.16.0](../content/org/jreleaser/jreleaser-1.16.0.buildspec) | `bin/add-new-release.sh content/org/jreleaser/jreleaser-1.15.0.buildspec 1.16.0` |
| <!-- 20240620095218 --> [jpmml-sparkml](../content/org/jpmml/jpmml-sparkml/README.md) | [2.5.1](../content/org/jpmml/jpmml-sparkml/jpmml-sparkml-2.5.1.buildspec) :white_check_mark: | 2.5.0 2.4.1 2.3.2 2.2.3 2.1.3  | `bin/add-new-release.sh content/org/jpmml/jpmml-sparkml/jpmml-sparkml-2.5.1.buildspec ...` |
<!-- END GENERATED ADD OK -->

### Unexpected Diffoscope in Buildspec
`buildcompare` says `ko=0` but `buildspec` configures a `diffoscope` value in following releases:
<!-- BEGIN GENERATED UNEXPECTED DIFFOSCOPE -->
      content/com/fasterxml/uuid/java-uuid-generator-5.1.0.buildspec
<!-- END GENERATED UNEXPECTED DIFFOSCOPE -->

### Missing Diffoscope in Buildspec
`buildspec` configures a `diffoscope` value to missing file in following releases:
<!-- BEGIN GENERATED MISSING DIFFOSCOPE -->
<!-- END GENERATED MISSING DIFFOSCOPE -->

## Apache Release Candidate in Staging

<!-- BEGIN GENERATED ADD STAGING -->
|    | artifactId | from | to | command |
| -- | ---------- | ---- | -- | ------- |
| <!-- 20241210200039 --> [:mailbox:](https://lists.apache.org/list?dev@maven.apache.org:lte=1M:VOTE) | [maven-changes-plugin](../content/org/apache/maven/plugins/maven-changes-plugin/README.md) | [3.0.0-M1](../content/org/apache/maven/plugins/maven-changes-plugin/maven-changes-plugin-3.0.0-M1.buildspec) :white_check_mark: | [3.0.0-M2](../content/org/apache/maven/plugins/maven-changes-plugin/maven-changes-plugin-3.0.0-M2.buildspec)  | `bin/add-new-release.sh content/org/apache/maven/plugins/maven-changes-plugin/maven-changes-plugin-3.0.0-M1.buildspec 3.0.0-M2 staging` |
| <!-- 20241022110853 --> [:mailbox:](https://lists.apache.org/list?dev@commons.apache.org:lte=1M:VOTE) | [commons-parent](../content/org/apache/commons/parent/README.md) | [78](../content/org/apache/commons/parent/commons-parent-78.buildspec) :white_check_mark: | [79](../content/org/apache/commons/parent/commons-parent-79.buildspec)  | `bin/add-new-release.sh content/org/apache/commons/parent/commons-parent-78.buildspec 79 staging` |
| <!-- 20240913092416 --> [:mailbox:](https://lists.apache.org/list?dev@paimon.apache.org:lte=1M:VOTE) | [paimon-parent](../content/org/apache/paimon/README.md) | [0.9.0](../content/org/apache/paimon/paimon-parent-0.9.0.buildspec) :warning: [:memo:](https://github.com/apache/paimon/pull/4190) | [1.0.0](../content/org/apache/paimon/paimon-parent-1.0.0.buildspec)  | `bin/add-new-release.sh content/org/apache/paimon/paimon-parent-0.9.0.buildspec 1.0.0 staging` |
| <!-- 20240623182539 --> [:mailbox:](https://lists.apache.org/list?dev@maven.apache.org:lte=1M:VOTE) | [maven-shared-jar](../content/org/apache/maven/shared/maven-shared-jar/README.md) | [3.1.1](../content/org/apache/maven/shared/maven-shared-jar/maven-shared-jar-3.1.1.buildspec) :white_check_mark: | [3.2.0](../content/org/apache/maven/shared/maven-shared-jar/maven-shared-jar-3.2.0.buildspec)  | `bin/add-new-release.sh content/org/apache/maven/shared/maven-shared-jar/maven-shared-jar-3.1.1.buildspec 3.2.0 staging` |
| <!-- 20240310140556 --> [:mailbox:](https://lists.apache.org/list?dev@maven.apache.org:lte=1M:VOTE) | [maven-remote-resources-plugin](../content/org/apache/maven/plugins/maven-remote-resources-plugin/README.md) | [3.2.0](../content/org/apache/maven/plugins/maven-remote-resources-plugin/maven-remote-resources-plugin-3.2.0.buildspec) :warning: | [3.3.0](../content/org/apache/maven/plugins/maven-remote-resources-plugin/maven-remote-resources-plugin-3.3.0.buildspec)  | `bin/add-new-release.sh content/org/apache/maven/plugins/maven-remote-resources-plugin/maven-remote-resources-plugin-3.2.0.buildspec 3.3.0 staging` |
| <!-- 20230920202802 --> [:mailbox:](https://lists.apache.org/list?dev@wayang.apache.org:lte=1M:VOTE) | [wayang](../content/org/apache/wayang/README.md) | [0.7.1](../content/org/apache/wayang/wayang-0.7.1.buildspec) :white_check_mark: | [1.0.0-RC3](../content/org/apache/wayang/wayang-1.0.0-RC3.buildspec)  | `bin/add-new-release.sh content/org/apache/wayang/wayang-0.7.1.buildspec 1.0.0-RC3 staging` |
<!-- END GENERATED ADD STAGING -->

## New Release of non-Reproducible Previous

<!-- BEGIN GENERATED ADD KO -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20241230095252 --> [logback-parent](../content/ch/qos/logback/README.md) | [1.5.13](../content/ch/qos/logback/logback-1.5.13.buildspec) :x: | [1.5.15](../content/ch/qos/logback/logback-1.5.15.buildspec) | `bin/add-new-release.sh content/ch/qos/logback/logback-1.5.13.buildspec 1.5.15` |
| <!-- 20241227183453 --> [legend-engine](../content/org/finos/legend/engine/README.md) | [4.56.0](../content/org/finos/legend/engine/legend-engine-4.56.0.buildspec) :warning: [:memo:](https://github.com/finos/legend-engine/pull/1337#issuecomment-1508509457) | [4.67.10](../content/org/finos/legend/engine/legend-engine-4.67.10.buildspec) | `bin/add-new-release.sh content/org/finos/legend/engine/legend-engine-4.56.0.buildspec 4.67.10` |
| <!-- 20241220093958 --> [camel](../content/org/apache/camel/camel/README.md) | [4.0.0-RC1](../content/org/apache/camel/camel/camel-4.0.0-RC1.buildspec) :warning: | [4.9.0](../content/org/apache/camel/camel/camel-4.9.0.buildspec) | `bin/add-new-release.sh content/org/apache/camel/camel/camel-4.0.0-RC1.buildspec 4.9.0` |
| <!-- 20241219122805 --> [glassfish-parent](../content/org/glassfish/main/README.md) | [8.0.0-JDK17-M7](../content/org/glassfish/main/glassfish-8.0.0-JDK17-M7.buildspec) :warning: | [8.0.0-JDK17-M9](../content/org/glassfish/main/glassfish-8.0.0-JDK17-M9.buildspec) | `bin/add-new-release.sh content/org/glassfish/main/glassfish-8.0.0-JDK17-M7.buildspec 8.0.0-JDK17-M9` |
| <!-- 20241215170740 --> [reload4j](../content/ch/qos/reload4j/README.md) | [1.2.25](../content/ch/qos/reload4j/reload4j-1.2.25.buildspec) :warning: | [1.2.26](../content/ch/qos/reload4j/reload4j-1.2.26.buildspec) | `bin/add-new-release.sh content/ch/qos/reload4j/reload4j-1.2.25.buildspec 1.2.26` |
| <!-- 20241211104935 --> [protostream-aggregator](../content/org/infinispan/protostream/README.md) | [5.0.12.Final](../content/org/infinispan/protostream/protostream-5.0.12.Final.buildspec) :warning: [:memo:](https://github.com/infinispan/protostream/pull/358) | [6.0.0.Dev01](../content/org/infinispan/protostream/protostream-6.0.0.Dev01.buildspec) | `bin/add-new-release.sh content/org/infinispan/protostream/protostream-5.0.12.Final.buildspec 6.0.0.Dev01` |
| <!-- 20241207202534 --> [com.io7m.cardant](../content/com/io7m/cardant/README.md) | [0.0.2](../content/com/io7m/cardant/com.io7m.cardant-0.0.2.buildspec) :warning: | [1.0.0-beta0001](../content/com/io7m/cardant/com.io7m.cardant-1.0.0-beta0001.buildspec) | `bin/add-new-release.sh content/com/io7m/cardant/com.io7m.cardant-0.0.2.buildspec 1.0.0-beta0001` |
| <!-- 20241120144345 --> [arthas-all](../content/com/taobao/arthas/README.md) | [4.0.2](../content/com/taobao/arthas/arthas-4.0.2.buildspec) :warning: | [4.0.4](../content/com/taobao/arthas/arthas-4.0.4.buildspec) | `bin/add-new-release.sh content/com/taobao/arthas/arthas-4.0.2.buildspec 4.0.4` |
| <!-- 20241110060152 --> [swagger-ui](../content/org/webjars/swagger-ui/README.md) | [5.15.2](../content/org/webjars/swagger-ui/swagger-ui-5.15.2.buildspec) :x: | [5.18.2](../content/org/webjars/swagger-ui/swagger-ui-5.18.2.buildspec) | `bin/add-new-release.sh content/org/webjars/swagger-ui/swagger-ui-5.15.2.buildspec 5.18.2` |
| <!-- 20241015135826 --> [jena](../content/org/apache/jena/jena/README.md) | [4.5.0](../content/org/apache/jena/jena/jena-4.5.0.buildspec) :warning: | [5.2.0](../content/org/apache/jena/jena/jena-5.2.0.buildspec) | `bin/add-new-release.sh content/org/apache/jena/jena/jena-4.5.0.buildspec 5.2.0` |
| <!-- 20240812114051 --> [html-formatter](../content/io/cucumber/html-formatter/README.md) | [20.2.0](../content/io/cucumber/html-formatter/html-formatter-20.2.0.buildspec) :warning: [:memo:](https://github.com/cucumber/html-formatter/issues/207) | [21.7.0](../content/io/cucumber/html-formatter/html-formatter-21.7.0.buildspec) | `bin/add-new-release.sh content/io/cucumber/html-formatter/html-formatter-20.2.0.buildspec 21.7.0` |
| <!-- 20240702171741 --> [git-commit-id-maven-plugin](../content/io/github/git-commit-id/README.md) | [9.0.0](../content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec) :x: | [9.0.1](../content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.1.buildspec) | `bin/add-new-release.sh content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec 9.0.1` |
| <!-- 20240531090932 --> [pmd-designer](../content/net/sourceforge/pmd/pmd-designer/README.md) | [7.0.0](../content/net/sourceforge/pmd/pmd-designer/pmd-designer-7.0.0.buildspec) :warning: | [7.2.0](../content/net/sourceforge/pmd/pmd-designer/pmd-designer-7.2.0.buildspec) | `bin/add-new-release.sh content/net/sourceforge/pmd/pmd-designer/pmd-designer-7.0.0.buildspec 7.2.0` |
| <!-- 20240509124549 --> [paimon-shade](../content/org/apache/paimon/shade/README.md) | [0.6.0-incubating](../content/org/apache/paimon/shade/paimon-shade-0.6.0-incubating.buildspec) :warning: [:memo:](https://github.com/apache/incubator-paimon-shade/pull/18) | [0.8.0](../content/org/apache/paimon/shade/paimon-shade-0.8.0.buildspec) | `bin/add-new-release.sh content/org/apache/paimon/shade/paimon-shade-0.6.0-incubating.buildspec 0.8.0` |
| <!-- 20240321101833 --> [io.wcm.wcm.ui.granite](../content/io/wcm/io.wcm.wcm/ui/granite/README.md) | [1.9.12](../content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.9.12.buildspec) :warning: | [1.10.4](../content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.10.4.buildspec) | `bin/add-new-release.sh content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.9.12.buildspec 1.10.4` |
| <!-- 20240313094557 --> [io.wcm.wcm.parsys](../content/io/wcm/io.wcm.wcm/parsys/README.md) | [1.6.4](../content/io/wcm/io.wcm.wcm/parsys/wcm-parsys-1.6.4.buildspec) :warning: | [1.7.4](../content/io/wcm/io.wcm.wcm/parsys/wcm-parsys-1.7.4.buildspec) | `bin/add-new-release.sh content/io/wcm/io.wcm.wcm/parsys/wcm-parsys-1.6.4.buildspec 1.7.4` |
| <!-- 20231012160021 --> [parent](../content/org/apache/sis/README.md) | [1.3](../content/org/apache/sis/parent-1.3.buildspec) :warning: [:memo:](https://github.com/apache/sis/pull/36) | [1.4](../content/org/apache/sis/parent-1.4.buildspec) | `bin/add-new-release.sh content/org/apache/sis/parent-1.3.buildspec 1.4` |
<!-- END GENERATED ADD KO -->

## Newest not reproducible

<!-- BEGIN GENERATED NEWEST NOT REPRODUCIBLE -->
| artifactId | newest |
| ---------- | ------ |
| <!-- 20241226222731 --> [org.apache.sling.servlets.resolver](../content/org/apache/sling/org.apache.sling.servlets.resolver/README.md) | 2.11.8 :warning: |
| <!-- 20241223223827 --> [nifi](../content/org/apache/nifi/nifi/README.md) | 2.1.0 :warning: |
| <!-- 20241223181554 --> [opentelemetry-instrumentation-api](../content/io/opentelemetry/instrumentation/README.md) | 2.11.0 :warning: |
| <!-- 20241221111725 --> [org.apache.sling.feature.launcher](../content/org/apache/sling/org.apache.sling.feature.launcher/README.md) | 1.3.2 :warning: |
| <!-- 20241220140350 --> [maven-lockfile](../content/io/github/chains-project/maven-lockfile/README.md) | 5.3.5 :warning: |
| <!-- 20241220140033 --> [org.apache.sling.models.impl](../content/org/apache/sling/org.apache.sling.models.impl/README.md) | 1.7.8 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-models-impl/pull/62) |
| <!-- 20241219115849 --> [quarkus-project](../content/io/quarkus/README.md) | 3.17.5 :warning: [:memo:](https://github.com/quarkusio/quarkus/pull/44671) |
| <!-- 20241218050201 --> [kubernetes-client-project](../content/io/fabric8/kubernetes-client/README.md) | 7.0.1 :warning: |
| <!-- 20241216231422 --> [maven](../content/org/apache/maven/maven/README.md) | 4.0.0-rc-2 :warning: |
| <!-- 20241216105905 --> [org.apache.sling.commons.log.webconsole](../content/org/apache/sling/org.apache.sling.commons.log.webconsole/README.md) | 1.0.2 :warning: |
| <!-- 20241215214119 --> [plexus-utils](../content/org/codehaus/plexus/plexus-utils/README.md) | 4.0.2 :warning: |
| <!-- 20241213164219 --> [acs-aem-commons](../content/com/adobe/acs/aem-commons/README.md) | 6.10.0 :warning: |
| <!-- 20241210081421 --> [io.wcm.handler.link](../content/io/wcm/io.wcm.handler/link/README.md) | 2.2.4 :warning: |
| <!-- 20241210081249 --> [io.wcm.handler.media](../content/io/wcm/io.wcm.handler/media/README.md) | 2.3.0 :warning: |
| <!-- 20241209231051 --> [jooby](../content/io/jooby/README.md) | 3.5.5 :warning: |
| <!-- 20241207223709 --> [royale-typedefs-parent](../content/org/apache/royale/typedefs/README.md) | 0.9.12 :warning: |
| <!-- 20241207223516 --> [royale-framework-parent](../content/org/apache/royale/framework/README.md) | 0.9.12 :warning: |
| <!-- 20241207221427 --> [compiler](../content/org/apache/royale/compiler/README.md) | 0.9.12 :warning: |
| <!-- 20241204065136 --> [yupiik-tools-maven-plugin-parent](../content/io/yupiik/maven/plugin/README.md) | 1.2.5 :warning: |
| <!-- 20241203144539 --> [pulsar](../content/org/apache/pulsar/README.md) | 4.0.1 :warning: |
| <!-- 20241202181948 --> [commons-dbcp2](../content/org/apache/commons/commons-dbcp2/README.md) | 2.13.0 :warning: |
| <!-- 20241201082316 --> [org.apache.sling.distribution.core](../content/org/apache/sling/org.apache.sling.distribution.core/README.md) | 0.6.0 :warning: |
| <!-- 20241129071420 --> [license-maven-plugin](../content/org/codehaus/mojo/license-maven-plugin/README.md) | 2.5.0 :warning: |
| <!-- 20241127152503 --> [mybatis-spring-boot](../content/org/mybatis/spring/boot/README.md) | 3.0.4 :warning: |
| <!-- 20241126142609 --> [mybatis](../content/org/mybatis/mybatis/README.md) | 3.5.17 :warning: |
| <!-- 20241125131237 --> [crypto-commons](../content/net/osslabz/crypto-commons/README.md) | 0.5.0 :warning: |
| <!-- 20241120023729 --> [amoro-parent](../content/org/apache/amoro/README.md) | 0.7.1-incubating :warning: |
| <!-- 20241119151133 --> [org.apache.sling.feature.cpconverter](../content/org/apache/sling/org.apache.sling.feature.cpconverter/README.md) | 1.3.8 :warning: |
| <!-- 20241114163736 --> [gwt-commons-validator](../content/de/knightsoft-net/gwt-commons-validator/README.md) | 1.9.0-1 :warning: |
| <!-- 20241114145222 --> [fediz](../content/org/apache/cxf/fediz/README.md) | 1.7.0 :warning: |
| <!-- 20241114074423 --> [jackrabbit-oak](../content/org/apache/jackrabbit/oak/README.md) | 1.72.0 :warning: [:memo:](https://issues.apache.org/jira/browse/OAK-10662) |
| <!-- 20241113115211 --> [bitcoin-commons](../content/net/osslabz/bitcoin-commons/README.md) | 0.2.1 :warning: |
| <!-- 20241112125327 --> [coingecko-java](../content/net/osslabz/coingecko-java/README.md) | 1.2.0 :warning: |
| <!-- 20241112082354 --> [evm-abi-decoder](../content/net/osslabz/evm-abi-decode/README.md) | 0.1.0 :warning: |
| <!-- 20241111015604 --> [ratis](../content/org/apache/ratis/README.md) | 3.1.2 :warning: [:memo:](https://issues.apache.org/jira/browse/MRRESOURCES-150) |
| <!-- 20241109124721 --> [commons-release-plugin](../content/org/apache/commons/commons-release-plugin/README.md) | 1.8.3 :warning: |
| <!-- 20241106160454 --> [tomcat-authnz-spnego-ad](../content/net/sf/michael-o/tomcat/tomcat-authnz-spnego-ad/README.md) | 4.2.4 :warning: [:memo:](https://github.com/michael-o/tomcatspnegoad/issues/32) |
| <!-- 20241105103840 --> [atom-jaxb-parent](../content/fr/vidal/oss/README.md) | 2.0.0 :x: |
| <!-- 20241028173435 --> [flink-kubernetes-operator-parent](../content/org/apache/flink/flink-kubernetes-operator/README.md) | 1.10.0 :warning: |
| <!-- 20241025185600 --> [jdbi3-root](../content/org/jdbi/README.md) | 3.47.0 :warning: [:memo:](https://github.com/jdbi/jdbi/issues/2732) |
| <!-- 20241024173436 --> [parent](../content/org/apache/zookeeper/README.md) | 3.9.3 :warning: |
| <!-- 20241024144320 --> [jandex-parent](../content/io/smallrye/jandex/README.md) | 3.2.3 :warning: |
| <!-- 20241021102016 --> [jdplus-main](../content/eu/europa/ec/joinup/sat/jdplus-main/README.md) | 3.3.0 :warning: |
| <!-- 20241019172008 --> [tika](../content/org/apache/tika/README.md) | 3.0.0 :warning: |
| <!-- 20241018172054 --> [org.apache.sling.commons.metrics](../content/org/apache/sling/org.apache.sling.commons.metrics/README.md) | 1.2.14 :warning: |
| <!-- 20241014160814 --> [eforms-sdk-analyzer](../content/eu/europa/ted/eforms/eforms-sdk-analyzer/README.md) | 1.13.0 :warning: |
| <!-- 20241009192643 --> [camel-k-runtime-project](../content/org/apache/camel/camel-k-runtime/README.md) | 3.15.0 :warning: |
| <!-- 20241004105528 --> [jdplus-sdmx](../content/com/github/nbbrd/jdplus-sdmx/README.md) | 3.2.0 :warning: |
| <!-- 20241002220928 --> [sshd](../content/org/apache/sshd/README.md) | 2.14.0 :warning: |
| <!-- 20241002073844 --> [hive](../content/org/apache/hive/README.md) | 4.0.1 :warning: [:memo:](https://issues.apache.org/jira/browse/HIVE-28186) |
| <!-- 20240930082825 --> [io.wcm.caconfig.editor.root](../content/io/wcm/io.wcm.caconfig/README.md) | 1.16.6 :warning: |
| <!-- 20240916091231 --> [io.wcm.wcm.ui.clientlibs](../content/io/wcm/io.wcm.wcm/ui/clientlibs/README.md) | 1.4.0 :warning: |
| <!-- 20240913092416 --> [paimon-parent](../content/org/apache/paimon/README.md) | 0.9.0 :warning: [:memo:](https://github.com/apache/paimon/pull/4190) |
| <!-- 20240905060651 --> [org.apache.sling.scripting.core](../content/org/apache/sling/org.apache.sling.scripting.core/README.md) | 2.4.10 :warning: [:memo:](https://issues.apache.org/jira/browse/SLING-12422) |
| <!-- 20240826174802 --> [ldapchai](../content/com/github/ldapchai/README.md) | 0.8.6 :warning: [:memo:](https://github.com/ldapchai/ldapchai/issues/28) |
| <!-- 20240825173904 --> [io.takari.incrementalbuild](../content/io/takari/incrementalbuild/README.md) | 1.0.3 :warning: |
| <!-- 20240818211009 --> [htmlcompressor](../content/com/github/hazendaz/htmlcompressor/README.md) | 2.0.2 :warning: |
| <!-- 20240817210045 --> [mybatis-2-spring](../content/org/mybatis/mybatis-2-spring/README.md) | 1.2.1 :warning: |
| <!-- 20240814231054 --> [commons-cli](../content/org/apache/commons/commons-cli/README.md) | 1.9.0 :warning: |
| <!-- 20240814100724 --> [org.apache.sling.scripting.sightly.testing](../content/org/apache/sling/org.apache.sling.scripting.sightly.testing/README.md) | 1.0.36-1.4.0 :warning: |
| <!-- 20240812093803 --> [commons-numbers-parent](../content/org/apache/commons/numbers/README.md) | 1.2 :warning: |
| <!-- 20240811074040 --> [openfasttrace](../content/org/itsallcode/openfasttrace/README.md) | 4.1.0 :warning: |
| <!-- 20240810093636 --> [slf4j-parent](../content/org/slf4j/README.md) | 2.1.0-alpha1 :warning: |
| <!-- 20240802102342 --> [efx-toolkit-java](../content/eu/europa/ted/eforms/efx-toolkit-java/README.md) | 2.0.0-alpha.4 :warning: |
| <!-- 20240723191850 --> [bcel](../content/org/apache/commons/bcel/README.md) | 6.10.0 :warning: |
| <!-- 20240715085906 --> [commons-rng-parent](../content/org/apache/commons/rng/README.md) | 1.6 :warning: |
| <!-- 20240712103147 --> [jdplus-benchmarking](../content/eu/europa/ec/joinup/sat/jdplus-benchmarking/README.md) | 1.2.1 :warning: |
| <!-- 20240712083513 --> [jdplus-incubator](../content/eu/europa/ec/joinup/sat/jdplus-incubator/README.md) | 2.2.0 :warning: |
| <!-- 20240708084644 --> [io.wcm.wcm.commons](../content/io/wcm/io.wcm.wcm/commons/README.md) | 1.11.0 :warning: |
| <!-- 20240704232838 --> [hk2-parent](../content/org/glassfish/hk2/README.md) | 4.0.0-M3 :warning: [:memo:](https://github.com/eclipse-ee4j/glassfish-hk2/pull/1071) |
| <!-- 20240627192818 --> [commons-email2-parent](../content/org/apache/commons/email2/README.md) | 2.0.0-M1 :warning: |
| <!-- 20240627094116 --> [java-sql-parent](../content/com/github/nbbrd/java-sql-util/README.md) | 1.0.6 :warning: |
| <!-- 20240623065435 --> [drill-root](../content/org/apache/drill/README.md) | 1.21.2 :warning: |
| <!-- 20240617100002 --> [jspwiki-builder](../content/org/apache/jspwiki/README.md) | 2.12.2 :warning: [:memo:](https://issues.apache.org/jira/browse/JSPWIKI-1202) |
| <!-- 20240610180453 --> [com.io7m.certusine](../content/com/io7m/certusine/README.md) | 3.1.0 :warning: |
| <!-- 20240609233725 --> [javacan](../content/tel/schich/javacan/README.md) | 3.4.0 :x: |
| <!-- 20240603092651 --> [commons-jcs3](../content/org/apache/commons/commons-jcs3/README.md) | 3.2.1 :warning: [:memo:](https://github.com/apache/commons-jcs/commit/61661616d8cb586bc41c0bea5cd3a206ba0ec94d) |
| <!-- 20240527225823 --> [com.io7m.gtyrell](../content/com/io7m/gtyrell/README.md) | 4.0.0 :warning: |
| <!-- 20240524153720 --> [com.io7m.sunburst](../content/com/io7m/sunburst/README.md) | 0.0.7 :warning: |
| <!-- 20240524074513 --> [commons-daemon](../content/org/apache/commons/commons-daemon/README.md) | 1.4.0 :warning: |
| <!-- 20240522202533 --> [com.io7m.idstore](../content/com/io7m/idstore/README.md) | 2.0.1 :warning: |
| <!-- 20240510194112 --> [com.io7m.cedarbridge](../content/com/io7m/cedarbridge/README.md) | 2.0.0 :warning: [:memo:](https://github.com/io7m-com/cedarbridge/issues/62) |
| <!-- 20240510171359 --> [com.io7m.jsx](../content/com/io7m/jsx/README.md) | 4.0.0 :warning: |
| <!-- 20240506065040 --> [batchee](../content/org/apache/batchee/README.md) | 2.0.0 :warning: |
| <!-- 20240503123932 --> [org.apache.sling.rewriter](../content/org/apache/sling/org.apache.sling.rewriter/README.md) | 1.4.4 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-rewriter/pull/14) |
| <!-- 20240501164724 --> [turbine-webapp-6.0](../content/org/apache/turbine/turbine-webapp-6.0/README.md) | 3.0.0 :warning: |
| <!-- 20240420172655 --> [unexepack](../content/io/github/albertus82/unexepack/README.md) | 0.3.1 :warning: |
| <!-- 20240414093609 --> [maven-scm](../content/org/apache/maven/scm/README.md) | 2.1.0 :warning: |
| <!-- 20240412140142 --> [karaf](../content/org/apache/karaf/karaf/README.md) | 4.4.6 :warning: [:memo:](https://issues.apache.org/jira/browse/KARAF-7797) |
| <!-- 20240317040144 --> [systemds](../content/org/apache/systemds/README.md) | 3.2.0 :warning: |
| <!-- 20240312215350 --> [cdevents-sdk-java](../content/dev/cdevents/cdevents-sdk-java/README.md) | 0.3.1 :x: |
| <!-- 20240310140556 --> [maven-remote-resources-plugin](../content/org/apache/maven/plugins/maven-remote-resources-plugin/README.md) | 3.2.0 :warning: |
| <!-- 20240304110456 --> [jakarta.mail-api](../content/jakarta/mail/jakarta.mail-api/README.md) | 2.1.3 :warning: |
| <!-- 20240229131606 --> [angus-activation-project](../content/org/eclipse/angus/activation/README.md) | 2.0.2 :warning: |
| <!-- 20240219171831 --> [plc4x-parent](../content/org/apache/plc4x/plc4x/README.md) | 0.12.0 :x: |
| <!-- 20240126192007 --> [io.wcm.handler.richtext](../content/io/wcm/io.wcm.handler/richtext/README.md) | 2.0.0 :warning: |
| <!-- 20240122143033 --> [org.apache.sling.feature.extension.unpack](../content/org/apache/sling/org.apache.sling.feature.extension.unpack/README.md) | 0.4.0 :warning: |
| <!-- 20240118001405 --> [scimple](../content/org/apache/directory/scimple/README.md) | 1.0.0-M1 :warning: |
| <!-- 20240117130511 --> [jsign](../content/net/jsign/README.md) | 6.0 :warning: [:memo:](https://github.com/wvengen/proguard-maven-plugin/issues/279) |
| <!-- 20240110201843 --> [parent](../content/org/phoebus/README.md) | 4.7.3 :warning: [:memo:](https://github.com/ControlSystemStudio/phoebus/pull/2904) |
| <!-- 20231109041226 --> [org.apache.sling.cms](../content/org/apache/sling/org.apache.sling.cms/README.md) | 1.1.8 :warning: |
| <!-- 20231012084342 --> [jansi](../content/org/fusesource/jansi/jansi/README.md) | 2.4.1 :warning: [:memo:](https://github.com/moditect/moditect/pull/211) |
| <!-- 20230916081916 --> [org.apache.felix.healthcheck.core](../content/org/apache/felix/org.apache.felix.healthcheck.core/README.md) | 2.2.0 :warning: [:memo:](https://github.com/apache/felix-dev/pull/234) |
| <!-- 20230818102937 --> [microservice-security-autoconfiguration](../content/io/dwpbank/movewp3/microservice-security-autoconfiguration/README.md) | 3.0.2 :warning: [:memo:](https://github.com/movewp3/microservice-security-autoconfiguration/pull/19) |
| <!-- 20230721020416 --> [auto-record](../content/pl/com/labaj/auto-record/README.md) | 2.1.0 :x: |
| <!-- 20230713001648 --> [org.apache.sling.scripting.groovy](../content/org/apache/sling/org.apache.sling.scripting.groovy/README.md) | 1.3.0 :warning: |
| <!-- 20230620223800 --> [xml-maven-plugin](../content/org/codehaus/mojo/xml-maven-plugin/README.md) | 1.1.0 :warning: |
| <!-- 20230510171047 --> [Apache-Synapse](../content/org/apache/synapse/README.md) | 3.0.2 :warning: [:memo:](https://issues.apache.org/jira/browse/SYNAPSE-1128) |
| <!-- 20230305132220 --> [jarviz-core](../content/org/kordamp/jarviz/README.md) | 0.3.0 :warning: |
| <!-- 20230224162220 --> [decanter](../content/org/apache/karaf/decanter/README.md) | 2.10.0 :warning: |
| <!-- 20230219230122 --> [mybatis-generator](../content/org/mybatis/generator/README.md) | 1.4.2 :warning: |
| <!-- 20230215195813 --> [com.io7m.chione](../content/com/io7m/chione/README.md) | 0.0.2 :warning: |
| <!-- 20230213091325 --> [org.apache.sling.jcr.contentloader](../content/org/apache/sling/org.apache.sling.jcr.contentloader/README.md) | 2.6.0 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-jcr-contentloader/pull/21) |
| <!-- 20230204020210 --> [xmlchai](../content/org/jrivard/xmlchai/README.md) | 0.1.3 :warning: |
| <!-- 20221209232334 --> [watset](../content/org/nlpub/watset/README.md) | 2.8.2 :warning: |
| <!-- 20221123032956 --> [org.apache.sling.hc.support](../content/org/apache/sling/org.apache.sling.hc.support/README.md) | 1.0.10 :warning: |
| <!-- 20221107220203 --> [quick-perf-live](../content/org/quickperf/quick-perf-live/README.md) | 0.12 :warning: |
| <!-- 20221021224206 --> [quick-sql-test-data](../content/org/quickperf/quick-sql-test-data/README.md) | 0.1 :warning: |
| <!-- 20220916141422 --> [gemLibPki](../content/de/gematik/pki/gemlibpki-old/README.md) | 0.9.3 :warning: |
| <!-- 20220821195753 --> [org.apache.sling.pipes](../content/org/apache/sling/org.apache.sling.pipes/README.md) | 4.5.0 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-pipes/pull/20) |
| <!-- 20220803085924 --> [org.apache.sling.discovery.commons](../content/org/apache/sling/org.apache.sling.discovery.commons/README.md) | 1.0.28 :warning: |
| <!-- 20220720235831 --> [axis2](../content/org/apache/axis2/README.md) | 1.8.2 :warning: |
| <!-- 20220525193321 --> [jdo](../content/org/apache/jdo/README.md) | 3.2.1 :warning: [:memo:](https://github.com/apache/db-jdo/pull/49) |
| <!-- 20220525171200 --> [axiom](../content/org/apache/ws/commons/axiom/README.md) | 1.4.0 :warning: |
| <!-- 20220420183148 --> [logback-parent-db](../content/ch/qos/logback/db/README.md) | 1.2.11.1 :warning: [:memo:](https://github.com/qos-ch/logback-db/pull/2) |
| <!-- 20220318151210 --> [org.apache.sling.starter](../content/org/apache/sling/org.apache.sling.starter/README.md) | 12 :warning: |
| <!-- 20220314110853 --> [org.apache.sling.launchpad.testing](../content/org/apache/sling/org.apache.sling.launchpad.testing/README.md) | 12 :warning: |
| <!-- 20220313222929 --> [ftpserver-parent](../content/org/apache/mina/ftpserver/README.md) | 1.2.0 :warning: [:memo:](https://github.com/apache/mina-ftpserver/pull/13) |
| <!-- 20220303223913 --> [apache-any23](../content/org/apache/any23/README.md) | 2.7 :warning: [:memo:](https://github.com/apache/any23/pull/270) |
| <!-- 20220228062841 --> [isis-parent](../content/org/apache/isis/README.md) | 2.0.0-M7 :warning: |
| <!-- 20211221090833 --> [scriptingbundle-maven-plugin](../content/org/apache/sling/scriptingbundle-maven-plugin/README.md) | 0.5.2 :warning: |
| <!-- 20211212220158 --> [org.apache.sling.commons.messaging.mail](../content/org/apache/sling/org.apache.sling.commons.messaging.mail/README.md) | 2.0.0 :warning: |
| <!-- 20211018122406 --> [org.apache.sling.commons.crypto](../content/org/apache/sling/org.apache.sling.commons.crypto/README.md) | 1.1.0 :warning: [:memo:](https://issues.apache.org/jira/browse/SLING-11907) |
| <!-- 20201226140242 --> [maven-artifact-transfer](../content/org/apache/maven/shared/maven-artifact-transfer/README.md) | 0.13.1 :warning: [:memo:](https://github.com/apache/maven-artifact-transfer/commit/c2106c0500cc7c70c27581f117bf86e6185073c6) |
| <!-- 20200511133844 --> [org.apache.sling.installer.factory.packages](../content/org/apache/sling/org.apache.sling.installer.factory.packages/README.md) | 1.0.4 :warning: |
<!-- END GENERATED NEWEST NOT REPRODUCIBLE -->
