New Releases To Add
===================

<!-- BEGIN GENERATED ADD OK -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20250831195545 --> [metrics-parent](../content/io/dropwizard/metrics5/README.md) | [5.0.3](../content/io/dropwizard/metrics5/dropwizard-metrics-5.0.3.buildspec) :white_check_mark: | [5.0.4](../content/io/dropwizard/metrics5/dropwizard-metrics-5.0.4.buildspec) | `bin/add-new-release.sh content/io/dropwizard/metrics5/dropwizard-metrics-5.0.3.buildspec 5.0.4` |
| <!-- 20250831194932 --> [metrics-parent](../content/io/dropwizard/metrics/README.md) | [4.2.35](../content/io/dropwizard/metrics/dropwizard-metrics-4.2.35.buildspec) :white_check_mark: | [4.2.36](../content/io/dropwizard/metrics/dropwizard-metrics-4.2.36.buildspec) | `bin/add-new-release.sh content/io/dropwizard/metrics/dropwizard-metrics-4.2.35.buildspec 4.2.36` |
| <!-- 20250831164535 --> [jreleaser](../content/org/jreleaser/README.md) | [1.19.0](../content/org/jreleaser/jreleaser-1.19.0.buildspec) :white_check_mark: | [1.20.0](../content/org/jreleaser/jreleaser-1.20.0.buildspec) | `bin/add-new-release.sh content/org/jreleaser/jreleaser-1.19.0.buildspec 1.20.0` |
| <!-- 20250831142534 --> [jsign](../content/net/jsign/README.md) | [7.1](../content/net/jsign/jsign-7.1.buildspec) :white_check_mark: | [7.2](../content/net/jsign/jsign-7.2.buildspec) | `bin/add-new-release.sh content/net/jsign/jsign-7.1.buildspec 7.2` |
| <!-- 20250831140137 --> [maven-turbo-builder](../content/com/github/seregamorph/maven-turbo-builder/README.md) | [0.8](../content/com/github/seregamorph/maven-turbo-builder/maven-turbo-builder-0.8.buildspec) :white_check_mark: | [0.9](../content/com/github/seregamorph/maven-turbo-builder/maven-turbo-builder-0.9.buildspec) | `bin/add-new-release.sh content/com/github/seregamorph/maven-turbo-builder/maven-turbo-builder-0.8.buildspec 0.9` |
| <!-- 20250831122735 --> [ollama4j](../content/io/github/ollama4j/README.md) | [1.0.100](../content/io/github/ollama4j/ollama4j-1.0.100.buildspec) :white_check_mark: | [1.1.0](../content/io/github/ollama4j/ollama4j-1.1.0.buildspec) | `bin/add-new-release.sh content/io/github/ollama4j/ollama4j-1.0.100.buildspec 1.1.0` |
| <!-- 20250831021336 --> [spoon-core](../content/fr/inria/gforge/spoon/spoon-core/README.md) | [11.2.2-beta-8](../content/fr/inria/gforge/spoon/spoon-core/spoon-core-11.2.2-beta-8.buildspec) :white_check_mark: | [11.2.2-beta-9](../content/fr/inria/gforge/spoon/spoon-core/spoon-core-11.2.2-beta-9.buildspec) | `bin/add-new-release.sh content/fr/inria/gforge/spoon/spoon-core/spoon-core-11.2.2-beta-8.buildspec 11.2.2-beta-9` |
| <!-- 20250831011136 --> [hibernate-reactive-core](../content/org/hibernate/reactive/hibernate-reactive/README.md) | [4.1.0.Final](../content/org/hibernate/reactive/hibernate-reactive/hibernate-reactive-4.1.0.Final.buildspec) :white_check_mark: | 3.1.3.Final  | `bin/add-new-release.sh content/org/hibernate/reactive/hibernate-reactive/hibernate-reactive-4.1.0.Final.buildspec ...` |
| <!-- 20250831005143 --> [avaje-jsonb-parent](../content/io/avaje/jsonb/README.md) | [3.7-RC3](../content/io/avaje/jsonb/avaje-jsonb-3.7-RC3.buildspec) :white_check_mark: | [3.7](../content/io/avaje/jsonb/avaje-jsonb-3.7.buildspec) | `bin/add-new-release.sh content/io/avaje/jsonb/avaje-jsonb-3.7-RC3.buildspec 3.7` |
| <!-- 20250826124325 --> [cui-parent-pom](../content/de/cuioss/cui-parent-pom/README.md) | [1.1.4](../content/de/cuioss/cui-parent-pom/cui-parent-pom-1.1.4.buildspec) :white_check_mark: | [1.1.5](../content/de/cuioss/cui-parent-pom/cui-parent-pom-1.1.5.buildspec) | `bin/add-new-release.sh content/de/cuioss/cui-parent-pom/cui-parent-pom-1.1.4.buildspec 1.1.5` |
<!-- END GENERATED ADD OK -->

### Unexpected Diffoscope in Buildspec
`buildcompare` says `ko=0` but `buildspec` configures a `diffoscope` value in following releases:
<!-- BEGIN GENERATED UNEXPECTED DIFFOSCOPE -->
      content/com/fasterxml/jackson/dataformat/jackson-dataformat-xml/jackson-dataformat-xml-2.19.2.buildspec
<!-- END GENERATED UNEXPECTED DIFFOSCOPE -->

### Missing Diffoscope in Buildspec
`buildspec` configures a `diffoscope` value to missing file in following releases:
<!-- BEGIN GENERATED MISSING DIFFOSCOPE -->
<!-- END GENERATED MISSING DIFFOSCOPE -->

## Apache Release Candidate in Staging

<!-- BEGIN GENERATED ADD STAGING -->
|    | artifactId | from | to | command |
| -- | ---------- | ---- | -- | ------- |
| <!-- 20250823172048 --> [:mailbox:](https://lists.apache.org/list?dev@sshd.apache.org:lte=1M:VOTE) | [sshd](../content/org/apache/sshd/README.md) | [2.16.0](../content/org/apache/sshd/sshd-2.16.0.buildspec) :white_check_mark: | [3.0.0-M1](../content/org/apache/sshd/sshd-3.0.0-M1.buildspec)  | `bin/add-new-release.sh content/org/apache/sshd/sshd-2.16.0.buildspec 3.0.0-M1 staging` |
| <!-- 20250508080121 --> [:mailbox:](https://lists.apache.org/list?dev@amoro.apache.org:lte=1M:VOTE) | [amoro-parent](../content/org/apache/amoro/README.md) | [0.8.0-incubating](../content/org/apache/amoro/amoro-0.8.0-incubating.buildspec) :white_check_mark: | [0.8.1-incubating](../content/org/apache/amoro/amoro-0.8.1-incubating.buildspec)  | `bin/add-new-release.sh content/org/apache/amoro/amoro-0.8.0-incubating.buildspec 0.8.1-incubating staging` |
| <!-- 20250213085016 --> [:mailbox:](https://lists.apache.org/list?dev@ignite.apache.org:lte=1M:VOTE) | [apache-ignite](../content/org/apache/ignite/README.md) | [2.17.0](../content/org/apache/ignite/ignite-2.17.0.buildspec) :warning: | [3.0.0-alpha5](../content/org/apache/ignite/ignite-3.0.0-alpha5.buildspec)  | `bin/add-new-release.sh content/org/apache/ignite/ignite-2.17.0.buildspec 3.0.0-alpha5 staging` |
| <!-- 20241220140033 --> [:mailbox:](https://lists.apache.org/list?dev@sling.apache.org:lte=1M:VOTE) | [org.apache.sling.models.impl](../content/org/apache/sling/org.apache.sling.models.impl/README.md) | [1.7.8](../content/org/apache/sling/org.apache.sling.models.impl/org.apache.sling.models.impl-1.7.8.buildspec) :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-models-impl/pull/62) | [2.0.0](../content/org/apache/sling/org.apache.sling.models.impl/org.apache.sling.models.impl-2.0.0.buildspec)  | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.models.impl/org.apache.sling.models.impl-1.7.8.buildspec 2.0.0 staging` |
| <!-- 20241216113410 --> [:mailbox:](https://lists.apache.org/list?dev@sling.apache.org:lte=1M:VOTE) | [org.apache.sling.starter.content](../content/org/apache/sling/org.apache.sling.starter.content/README.md) | [1.0.16](../content/org/apache/sling/org.apache.sling.starter.content/org.apache.sling.starter.content-1.0.16.buildspec) :white_check_mark: | [2.0.0](../content/org/apache/sling/org.apache.sling.starter.content/org.apache.sling.starter.content-2.0.0.buildspec)  | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.starter.content/org.apache.sling.starter.content-1.0.16.buildspec 2.0.0 staging` |
<!-- END GENERATED ADD STAGING -->

## New Release of non-Reproducible Previous

<!-- BEGIN GENERATED ADD KO -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20250831114335 --> [avaje-http-parent](../content/io/avaje/http/README.md) | [3.5-RC1](../content/io/avaje/http/avaje-http-3.5-RC1.buildspec) :warning: | [3.5-RC3](../content/io/avaje/http/avaje-http-3.5-RC3.buildspec) | `bin/add-new-release.sh content/io/avaje/http/avaje-http-3.5-RC1.buildspec 3.5-RC3` |
| <!-- 20250829092417 --> [plc4x-parent](../content/org/apache/plc4x/plc4x/README.md) | [0.12.0](../content/org/apache/plc4x/plc4x/plc4x-0.12.0.buildspec) :x: | [0.13.1](../content/org/apache/plc4x/plc4x/plc4x-0.13.1.buildspec) | `bin/add-new-release.sh content/org/apache/plc4x/plc4x/plc4x-0.12.0.buildspec 0.13.1` |
| <!-- 20250826193624 --> [legend-engine](../content/org/finos/legend/engine/README.md) | [4.71.1](../content/org/finos/legend/engine/legend-engine-4.71.1.buildspec) :warning: [:memo:](https://github.com/finos/legend-engine/pull/1337#issuecomment-1508509457) | [4.97.1](../content/org/finos/legend/engine/legend-engine-4.97.1.buildspec) | `bin/add-new-release.sh content/org/finos/legend/engine/legend-engine-4.71.1.buildspec 4.97.1` |
| <!-- 20250819123125 --> [camel](../content/org/apache/camel/camel/README.md) | [4.10.0](../content/org/apache/camel/camel/camel-4.10.0.buildspec) :x: | [4.14.0](../content/org/apache/camel/camel/camel-4.14.0.buildspec) | `bin/add-new-release.sh content/org/apache/camel/camel/camel-4.10.0.buildspec 4.14.0` |
| <!-- 20250818155716 --> [jetty-project](../content/org/eclipse/jetty/jetty-project/README.md) | [12.1.0.beta3](../content/org/eclipse/jetty/jetty-project/jetty-project-12.1.0.beta3.buildspec) :warning: | [12.1.0](../content/org/eclipse/jetty/jetty-project/jetty-project-12.1.0.buildspec) | `bin/add-new-release.sh content/org/eclipse/jetty/jetty-project/jetty-project-12.1.0.beta3.buildspec 12.1.0` |
| <!-- 20250807132738 --> [io.wcm.wcm.ui.granite](../content/io/wcm/io.wcm.wcm/ui/granite/README.md) | [1.9.12](../content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.9.12.buildspec) :warning: | [1.11.0](../content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.11.0.buildspec) | `bin/add-new-release.sh content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.9.12.buildspec 1.11.0` |
| <!-- 20250806144016 --> [swagger-ui](../content/org/webjars/swagger-ui/README.md) | [5.15.2](../content/org/webjars/swagger-ui/swagger-ui-5.15.2.buildspec) :x: | [5.27.1](../content/org/webjars/swagger-ui/swagger-ui-5.27.1.buildspec) | `bin/add-new-release.sh content/org/webjars/swagger-ui/swagger-ui-5.15.2.buildspec 5.27.1` |
| <!-- 20250804154933 --> [flexmonster](../content/org/webjars/flexmonster/README.md) | [2.9.107](../content/org/webjars/flexmonster/flexmonster-2.9.107.buildspec) :x: | [2.9.109](../content/org/webjars/flexmonster/flexmonster-2.9.109.buildspec) | `bin/add-new-release.sh content/org/webjars/flexmonster/flexmonster-2.9.107.buildspec 2.9.109` |
| <!-- 20250729192532 --> [plotsquared-bukkit](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/README.md) | [7.5.4](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.4.buildspec) :x: | [7.5.6](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.6.buildspec) | `bin/add-new-release.sh content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.4.buildspec 7.5.6` |
| <!-- 20250624040809 --> [openfasttrace](../content/org/itsallcode/openfasttrace/README.md) | [4.1.0](../content/org/itsallcode/openfasttrace/openfasttrace-4.1.0.buildspec) :warning: | [4.2.0](../content/org/itsallcode/openfasttrace/openfasttrace-4.2.0.buildspec) | `bin/add-new-release.sh content/org/itsallcode/openfasttrace/openfasttrace-4.1.0.buildspec 4.2.0` |
| <!-- 20250531230706 --> [glassfish-parent](../content/org/glassfish/main/README.md) | [8.0.0-JDK17-M10](../content/org/glassfish/main/glassfish-8.0.0-JDK17-M10.buildspec) :warning: | [8.0.0-JDK17-M12](../content/org/glassfish/main/glassfish-8.0.0-JDK17-M12.buildspec) | `bin/add-new-release.sh content/org/glassfish/main/glassfish-8.0.0-JDK17-M10.buildspec 8.0.0-JDK17-M12` |
| <!-- 20250522192025 --> [git-commit-id-maven-plugin](../content/io/github/git-commit-id/README.md) | [9.0.0](../content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec) :x: | [9.0.2](../content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.2.buildspec) | `bin/add-new-release.sh content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec 9.0.2` |
| <!-- 20240313094557 --> [io.wcm.wcm.parsys](../content/io/wcm/io.wcm.wcm/parsys/README.md) | [1.6.4](../content/io/wcm/io.wcm.wcm/parsys/wcm-parsys-1.6.4.buildspec) :warning: | [1.7.4](../content/io/wcm/io.wcm.wcm/parsys/wcm-parsys-1.7.4.buildspec) | `bin/add-new-release.sh content/io/wcm/io.wcm.wcm/parsys/wcm-parsys-1.6.4.buildspec 1.7.4` |
| <!-- 20231012160021 --> [parent](../content/org/apache/sis/README.md) | [1.3](../content/org/apache/sis/parent-1.3.buildspec) :warning: [:memo:](https://github.com/apache/sis/pull/36) | [1.4](../content/org/apache/sis/parent-1.4.buildspec) | `bin/add-new-release.sh content/org/apache/sis/parent-1.3.buildspec 1.4` |
<!-- END GENERATED ADD KO -->

## Newest not reproducible

<!-- BEGIN GENERATED NEWEST NOT REPRODUCIBLE -->
| artifactId | newest |
| ---------- | ------ |
| <!-- 20250829100420 --> [quarkus-project](../content/io/quarkus/README.md) | 3.26.1 :warning: |
| <!-- 20250829003238 --> [parent](../content/org/apache/zookeeper/README.md) | 3.9.4 :warning: |
| <!-- 20250826114107 --> [com.io7m.dixmont](../content/com/io7m/dixmont/README.md) | 2.1.0 :warning: |
| <!-- 20250826064756 --> [jpmml-transpiler](../content/org/jpmml/jpmml-transpiler/README.md) | 1.4.5 :warning: |
| <!-- 20250826052207 --> [jakarta.mail-api](../content/jakarta/mail/jakarta.mail-api/README.md) | 2.1.4 :warning: |
| <!-- 20250822084529 --> [zrlog-base](../content/com/hibegin/zrlog-base/README.md) | 3.2.111 :warning: [:memo:](https://github.com/zrlog-extensions/zrlog-base/pull/1) |
| <!-- 20250821205139 --> [spotbugs-maven-plugin](../content/com/github/spotbugs/spotbugs-maven-plugin/README.md) | 4.9.4.0 :warning: [:memo:](https://github.com/spotbugs/spotbugs-maven-plugin/issues/1148) |
| <!-- 20250817010217 --> [opentelemetry-instrumentation-api](../content/io/opentelemetry/instrumentation/README.md) | 2.19.0 :warning: |
| <!-- 20250815070534 --> [mockito-core](../content/org/mockito/mockito-core/README.md) | 5.19.0 :warning: [:memo:](https://github.com/JuyeopJang/mockito/commit/ecc3bcbca825ad51dee6c5baee45f8c7571329d8) |
| <!-- 20250814044128 --> [jackrabbit-oak](../content/org/apache/jackrabbit/oak/README.md) | 1.84.0 :warning: [:memo:](https://issues.apache.org/jira/browse/OAK-10662) |
| <!-- 20250813185537 --> [jackson-datatypes-misc-parent](../content/tools/jackson/datatype/jackson-datatypes-misc-parent/README.md) | 3.0.0-rc8 :warning: |
| <!-- 20250813185535 --> [jackson-datatype-joda](../content/tools/jackson/datatype/jackson-datatype-joda/README.md) | 3.0.0-rc8 :warning: |
| <!-- 20250813185137 --> [jackson-datatypes-collections](../content/tools/jackson/datatype/jackson-datatypes-collections/README.md) | 3.0.0-rc8 :warning: |
| <!-- 20250813184935 --> [jackson-dataformat-xml](../content/tools/jackson/dataformat/jackson-dataformat-xml/README.md) | 3.0.0-rc8 :warning: |
| <!-- 20250813184535 --> [jackson-dataformats-text](../content/tools/jackson/dataformat/jackson-dataformats-text/README.md) | 3.0.0-rc8 :warning: |
| <!-- 20250813184336 --> [jackson-dataformats-binary](../content/tools/jackson/dataformat/jackson-dataformats-binary/README.md) | 3.0.0-rc8 :warning: |
| <!-- 20250813182536 --> [jackson-jr-parent](../content/tools/jackson/jr/README.md) | 3.0.0-rc8 :warning: |
| <!-- 20250813182533 --> [jackson-databind](../content/tools/jackson/core/jackson-databind/README.md) | 3.0.0-rc8 :warning: |
| <!-- 20250813125600 --> [jooby](../content/io/jooby/README.md) | 4.0.6 :warning: |
| <!-- 20250811122850 --> [syncope](../content/org/apache/syncope/README.md) | 4.0.1 :warning: |
| <!-- 20250810192706 --> [bundlebee](../content/io/yupiik/bundlebee/README.md) | 1.0.31 :warning: |
| <!-- 20250808105134 --> [jpmml-sparkml](../content/org/jpmml/jpmml-sparkml/README.md) | 3.2.0 :warning: |
| <!-- 20250808033409 --> [tika](../content/org/apache/tika/README.md) | 3.2.2 :warning: [:memo:](https://issues.apache.org/jira/browse/TIKA-4470) |
| <!-- 20250807155131 --> [karaf](../content/org/apache/karaf/karaf/README.md) | 4.4.8 :warning: [:memo:](https://issues.apache.org/jira/browse/KARAF-7797) |
| <!-- 20250805203748 --> [yupiik-tools-maven-plugin-parent](../content/io/yupiik/maven/plugin/README.md) | 1.2.12 :warning: |
| <!-- 20250805163733 --> [jpmml-xgboost](../content/org/jpmml/jpmml-xgboost/README.md) | 1.9.2 :warning: |
| <!-- 20250804073935 --> [jpmml-sklearn](../content/org/jpmml/jpmml-sklearn/README.md) | 1.9.14 :warning: |
| <!-- 20250804063735 --> [avaje-inject-parent](../content/io/avaje/inject/README.md) | 12.0-RC4 :warning: |
| <!-- 20250803190135 --> [psi-probe](../content/com/github/psi-probe/README.md) | 5.3.0 :warning: |
| <!-- 20250801114532 --> [jpmml-python](../content/org/jpmml/jpmml-python/README.md) | 1.3.7 :warning: |
| <!-- 20250731142932 --> [pulsar](../content/org/apache/pulsar/README.md) | 4.0.6 :warning: |
| <!-- 20250731112446 --> [hive](../content/org/apache/hive/README.md) | 4.1.0 :warning: [:memo:](https://issues.apache.org/jira/browse/HIVE-28186) |
| <!-- 20250730122750 --> [efx-toolkit-java](../content/eu/europa/ted/eforms/efx-toolkit-java/README.md) | 2.0.0-alpha.5 :warning: |
| <!-- 20250729142844 --> [jspwiki-builder](../content/org/apache/jspwiki/README.md) | 2.12.3 :warning: |
| <!-- 20250724131938 --> [jdplus-sdmx](../content/com/github/nbbrd/jdplus-sdmx/README.md) | 3.3.1 :warning: |
| <!-- 20250722205732 --> [nifi](../content/org/apache/nifi/nifi/README.md) | 2.5.0 :warning: |
| <!-- 20250721081159 --> [jandex-parent](../content/io/smallrye/jandex/README.md) | 3.4.0 :warning: |
| <!-- 20250718171323 --> [jena](../content/org/apache/jena/jena/README.md) | 5.5.0 :warning: |
| <!-- 20250717183535 --> [gwt-commons-validator](../content/de/knightsoft-net/gwt-commons-validator/README.md) | 1.10.0-0 :warning: |
| <!-- 20250715162154 --> [acs-aem-commons](../content/com/adobe/acs/aem-commons/README.md) | 6.14.0 :warning: |
| <!-- 20250715144131 --> [parent](../content/org/phoebus/README.md) | 5.0.2 :warning: |
| <!-- 20250713182451 --> [jpmml-converter](../content/org/jpmml/jpmml-converter/README.md) | 1.6.3 :warning: |
| <!-- 20250713090734 --> [jpmml-evaluator](../content/org/jpmml/jpmml-evaluator/README.md) | 1.7.4 :warning: |
| <!-- 20250711185310 --> [mybatis-spring-boot](../content/org/mybatis/spring/boot/mybatis-spring-boot/README.md) | 3.0.5 :warning: |
| <!-- 20250711185310 --> [mybatis-spring-boot](../content/org/mybatis/spring/boot/README.md) | 3.0.5 :warning: |
| <!-- 20250709095534 --> [flink-kubernetes-operator-parent](../content/org/apache/flink/flink-kubernetes-operator/README.md) | 1.12.1 :warning: |
| <!-- 20250707172817 --> [shiro-root](../content/org/apache/shiro/README.md) | 2.0.5 :warning: |
| <!-- 20250707085541 --> [java-sql-parent](../content/com/github/nbbrd/java-sql-util/README.md) | 1.0.7 :warning: |
| <!-- 20250704040735 --> [jpmml-model](../content/org/jpmml/jpmml-model/README.md) | 1.7.4 :warning: [:memo:](https://github.com/jpmml/jpmml-model/issues/42) |
| <!-- 20250702142639 --> [rainbowgum-maven-parent](../content/io/jstach/rainbowgum/README.md) | 0.8.2 :warning: |
| <!-- 20250628075449 --> [drill-root](../content/org/apache/drill/README.md) | 1.22.0 :warning: |
| <!-- 20250622062141 --> [activemq-parent](../content/org/apache/activemq/README.md) | 6.1.7 :warning: |
| <!-- 20250621194142 --> [jpmml-statsmodels](../content/org/jpmml/jpmml-statsmodels/README.md) | 1.3.2 :warning: |
| <!-- 20250619093642 --> [org.apache.sling.feature.launcher](../content/org/apache/sling/org.apache.sling.feature.launcher/README.md) | 1.3.4 :warning: |
| <!-- 20250616112425 --> [commons-fileupload2](../content/org/apache/commons/commons-fileupload2/README.md) | 2.0.0-M4 :warning: |
| <!-- 20250612131605 --> [jdplus-main](../content/eu/europa/ec/joinup/sat/jdplus-main/README.md) | 3.5.1 :warning: |
| <!-- 20250610114945 --> [kubernetes-client-project](../content/io/fabric8/kubernetes-client/README.md) | 7.3.1 :warning: |
| <!-- 20250606044217 --> [trino-root](../content/io/trino/README.md) | 476 :warning: |
| <!-- 20250603145335 --> [io.takari.incrementalbuild](../content/io/takari/incrementalbuild/README.md) | 1.0.4 :warning: |
| <!-- 20250522194000 --> [com.io7m.gtyrell](../content/com/io7m/gtyrell/README.md) | 4.0.1 :warning: |
| <!-- 20250519085748 --> [org.apache.sling.feature.cpconverter](../content/org/apache/sling/org.apache.sling.feature.cpconverter/README.md) | 1.3.10 :warning: |
| <!-- 20250519063835 --> [org.apache.sling.distribution.core](../content/org/apache/sling/org.apache.sling.distribution.core/README.md) | 0.7.4 :warning: |
| <!-- 20250512091503 --> [jdplus-benchmarking](../content/eu/europa/ec/joinup/sat/jdplus-benchmarking/README.md) | 2.0.1 :warning: |
| <!-- 20250509151950 --> [com.io7m.quarrel](../content/com/io7m/quarrel/README.md) | 1.8.0 :warning: |
| <!-- 20250509125658 --> [org.apache.sling.commons.log](../content/org/apache/sling/org.apache.sling.commons.log/README.md) | 6.0.0 :warning: |
| <!-- 20250508083646 --> [org.apache.sling.scripting.sightly.testing](../content/org/apache/sling/org.apache.sling.scripting.sightly.testing/README.md) | 1.0.40-1.4.0 :warning: |
| <!-- 20250507175507 --> [com.io7m.mime2045](../content/com/io7m/mime2045/README.md) | 1.2.0 :warning: |
| <!-- 20250506120219 --> [com.io7m.seltzer](../content/com/io7m/seltzer/README.md) | 1.2.0 :warning: |
| <!-- 20250504172405 --> [com.io7m.jbssio](../content/com/io7m/jbssio/README.md) | 3.0.0 :warning: |
| <!-- 20250503162925 --> [com.io7m.trasco](../content/com/io7m/trasco/README.md) | 3.1.1 :warning: |
| <!-- 20250502051147 --> [ratis-thirdparty](../content/org/apache/ratis/ratis-thirdparty/README.md) | 1.0.9 :warning: |
| <!-- 20250430084041 --> [com.io7m.certusine](../content/com/io7m/certusine/README.md) | 3.2.0 :warning: |
| <!-- 20250429144840 --> [jpmml-r](../content/org/jpmml/jpmml-r/README.md) | 1.7.2 :warning: |
| <!-- 20250429063039 --> [jansi](../content/org/fusesource/jansi/jansi/README.md) | 2.4.2 :warning: [:memo:](https://github.com/fusesource/jansi/pull/303) |
| <!-- 20250428131544 --> [commons-configuration2](../content/org/apache/commons/configuration2/README.md) | 2.12.0 :warning: |
| <!-- 20250427011857 --> [klass](../content/cool/klass/README.md) | 0.5.0 :warning: [:memo:](https://github.com/liftwizard/klass/issues/425) |
| <!-- 20250423191555 --> [bitcoin-commons](../content/net/osslabz/bitcoin-commons/README.md) | 0.3.0 :warning: |
| <!-- 20250423122320 --> [turnstile-siteverify-client](../content/net/osslabz/turnstile-siteverify-client/README.md) | 0.4.0 :warning: |
| <!-- 20250422082642 --> [crypto-commons](../content/net/osslabz/crypto-commons/README.md) | 0.6.4 :warning: [:memo:](https://github.com/osslabz/crypto-commons/pull/54) |
| <!-- 20250419204402 --> [htmlcompressor](../content/com/github/hazendaz/htmlcompressor/README.md) | 1.11.0 :warning: |
| <!-- 20250419183023 --> [ServerLib](../content/dev/notmyfault/serverlib/ServerLib/README.md) | 2.3.7 :x: |
| <!-- 20250418115815 --> [systemds](../content/org/apache/systemds/README.md) | 3.3.0 :warning: [:memo:](https://github.com/apache/systemds/pull/2257) |
| <!-- 20250416123530 --> [commons-jexl3](../content/org/apache/commons/commons-jexl3/README.md) | 3.5.0 :warning: |
| <!-- 20250412064600 --> [jpmml-lightgbm](../content/org/jpmml/jpmml-lightgbm/README.md) | 1.6.1 :warning: |
| <!-- 20250411062112 --> [jpmml-h2o](../content/org/jpmml/jpmml-h2o/README.md) | 1.3.1 :warning: |
| <!-- 20250410085949 --> [fediz](../content/org/apache/cxf/fediz/README.md) | 1.7.1 :warning: |
| <!-- 20250409102346 --> [jdplus-incubator](../content/eu/europa/ec/joinup/sat/jdplus-incubator/README.md) | 2.3.0 :warning: |
| <!-- 20250403121924 --> [winrm-java](../content/org/metricshub/winrm-java/README.md) | 1.1.02 :warning: |
| <!-- 20250329100934 --> [com.io7m.looseleaf](../content/com/io7m/looseleaf/README.md) | 3.0.0 :warning: [:memo:](https://github.com/mojohaus/buildnumber-maven-plugin/issues/229) |
| <!-- 20250325094930 --> [camel-k-runtime-project](../content/org/apache/camel/camel-k-runtime/README.md) | 3.15.3 :warning: |
| <!-- 20250323131510 --> [packager-maven-plugin](../content/org/jpmml/packager-maven-plugin/README.md) | 1.1.0 :warning: |
| <!-- 20250314101946 --> [dbus-java-parent](../content/com/github/hypfvieh/dbus-java/README.md) | 5.1.1 :warning: [:memo:](https://github.com/hypfvieh/dbus-java/pull/279) |
| <!-- 20250311162322 --> [arthas-all](../content/com/taobao/arthas/README.md) | 4.0.5 :warning: [:memo:](https://github.com/alibaba/arthas/pull/3001) |
| <!-- 20250310171441 --> [axis2](../content/org/apache/axis2/README.md) | 2.0.0 :warning: [:memo:](https://github.com/apache/axis-axis2-java-core/pull/879) |
| <!-- 20250303160124 --> [eforms-sdk-analyzer](../content/eu/europa/ted/eforms/eforms-sdk-analyzer/README.md) | 1.13.1 :warning: |
| <!-- 20250226101218 --> [baremaps](../content/org/apache/baremaps/README.md) | 0.8.2 :warning: [:memo:](https://github.com/apache/incubator-baremaps/pull/951) |
| <!-- 20250225165035 --> [slf4j-parent](../content/org/slf4j/README.md) | 2.1.0-alpha1 :warning: |
| <!-- 20250224140054 --> [sdmx-dl-parent](../content/com/github/nbbrd/sdmx-dl/README.md) | 3.0.0-beta.14 :warning: |
| <!-- 20250217124403 --> [winrm](../content/org/sentrysoftware/winrm/README.md) | 1.1.01 :warning: |
| <!-- 20250214132638 --> [commons-vfs2](../content/org/apache/commons/commons-vfs2/README.md) | 2.10.0 :warning: |
| <!-- 20250213085016 --> [apache-ignite](../content/org/apache/ignite/README.md) | 2.17.0 :warning: |
| <!-- 20250203233329 --> [axiom](../content/org/apache/ws/commons/axiom/README.md) | 2.0.0 :warning: |
| <!-- 20250202185956 --> [jpmml-codemodel](../content/org/jpmml/jpmml-codemodel/README.md) | 1.2.0 :warning: |
| <!-- 20250201215052 --> [ftpserver-parent](../content/org/apache/mina/ftpserver/README.md) | 1.2.1 :warning: |
| <!-- 20250126122810 --> [org.apache.sling.xss](../content/org/apache/sling/org.apache.sling.xss/README.md) | 2.4.6 :warning: |
| <!-- 20250117094427 --> [org.apache.sling.starter](../content/org/apache/sling/org.apache.sling.starter/README.md) | 13 :warning: |
| <!-- 20250114121312 --> [commons-daemon](../content/org/apache/commons/commons-daemon/README.md) | 1.4.1 :warning: |
| <!-- 20250103195806 --> [ldapchai](../content/com/github/ldapchai/README.md) | 0.8.7 :warning: |
| <!-- 20241220140033 --> [org.apache.sling.models.impl](../content/org/apache/sling/org.apache.sling.models.impl/README.md) | 1.7.8 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-models-impl/pull/62) |
| <!-- 20241216105905 --> [org.apache.sling.commons.log.webconsole](../content/org/apache/sling/org.apache.sling.commons.log.webconsole/README.md) | 1.0.2 :warning: |
| <!-- 20241215214119 --> [plexus-utils](../content/org/codehaus/plexus/plexus-utils/README.md) | 4.0.2 :warning: |
| <!-- 20241215170740 --> [reload4j](../content/ch/qos/reload4j/README.md) | 1.2.26 :warning: |
| <!-- 20241207223709 --> [royale-typedefs-parent](../content/org/apache/royale/typedefs/README.md) | 0.9.12 :warning: |
| <!-- 20241207223516 --> [royale-framework-parent](../content/org/apache/royale/framework/README.md) | 0.9.12 :warning: |
| <!-- 20241207221427 --> [compiler](../content/org/apache/royale/compiler/README.md) | 0.9.12 :warning: |
| <!-- 20241207202534 --> [com.io7m.cardant](../content/com/io7m/cardant/README.md) | 1.0.0-beta0001 :warning: |
| <!-- 20241202181948 --> [commons-dbcp2](../content/org/apache/commons/commons-dbcp2/README.md) | 2.13.0 :warning: |
| <!-- 20241112125327 --> [coingecko-java](../content/net/osslabz/coingecko-java/README.md) | 1.2.0 :warning: |
| <!-- 20241112082354 --> [evm-abi-decoder](../content/net/osslabz/evm-abi-decode/README.md) | 0.1.0 :warning: |
| <!-- 20241106160454 --> [tomcat-authnz-spnego-ad](../content/net/sf/michael-o/tomcat/tomcat-authnz-spnego-ad/README.md) | 4.2.4 :warning: [:memo:](https://github.com/michael-o/tomcatspnegoad/issues/32) |
| <!-- 20241105103840 --> [atom-jaxb-parent](../content/fr/vidal/oss/README.md) | 2.0.0 :x: |
| <!-- 20241018172054 --> [org.apache.sling.commons.metrics](../content/org/apache/sling/org.apache.sling.commons.metrics/README.md) | 1.2.14 :warning: |
| <!-- 20240930082825 --> [io.wcm.caconfig.editor.root](../content/io/wcm/io.wcm.caconfig/README.md) | 1.16.6 :warning: |
| <!-- 20240916091231 --> [io.wcm.wcm.ui.clientlibs](../content/io/wcm/io.wcm.wcm/ui/clientlibs/README.md) | 1.4.0 :warning: |
| <!-- 20240817210045 --> [mybatis-2-spring](../content/org/mybatis/mybatis-2-spring/README.md) | 1.2.1 :warning: |
| <!-- 20240812093803 --> [commons-numbers-parent](../content/org/apache/commons/numbers/README.md) | 1.2 :warning: |
| <!-- 20240728141824 --> [object-size](../content/com/github/marschall/object-size/README.md) | 1.0.0 :warning: |
| <!-- 20240723191850 --> [bcel](../content/org/apache/commons/bcel/README.md) | 6.10.0 :warning: |
| <!-- 20240715085906 --> [commons-rng-parent](../content/org/apache/commons/rng/README.md) | 1.6 :warning: |
| <!-- 20240708084644 --> [io.wcm.wcm.commons](../content/io/wcm/io.wcm.wcm/commons/README.md) | 1.11.0 :warning: |
| <!-- 20240704232838 --> [hk2-parent](../content/org/glassfish/hk2/README.md) | 4.0.0-M3 :warning: [:memo:](https://github.com/eclipse-ee4j/glassfish-hk2/pull/1071) |
| <!-- 20240627192818 --> [commons-email2-parent](../content/org/apache/commons/email2/README.md) | 2.0.0-M1 :warning: |
| <!-- 20240609233725 --> [javacan](../content/tel/schich/javacan/README.md) | 3.4.0 :x: |
| <!-- 20240603092651 --> [commons-jcs3](../content/org/apache/commons/commons-jcs3/README.md) | 3.2.1 :warning: [:memo:](https://github.com/apache/commons-jcs/commit/61661616d8cb586bc41c0bea5cd3a206ba0ec94d) |
| <!-- 20240524153720 --> [com.io7m.sunburst](../content/com/io7m/sunburst/README.md) | 0.0.7 :warning: |
| <!-- 20240522202533 --> [com.io7m.idstore](../content/com/io7m/idstore/README.md) | 2.0.1 :warning: |
| <!-- 20240510194112 --> [com.io7m.cedarbridge](../content/com/io7m/cedarbridge/README.md) | 2.0.0 :warning: [:memo:](https://github.com/io7m-com/cedarbridge/issues/62) |
| <!-- 20240510171359 --> [com.io7m.jsx](../content/com/io7m/jsx/README.md) | 4.0.0 :warning: |
| <!-- 20240509124549 --> [paimon-shade](../content/org/apache/paimon/shade/README.md) | 0.8.0 :warning: [:memo:](https://github.com/apache/incubator-paimon-shade/pull/18) |
| <!-- 20240506065040 --> [batchee](../content/org/apache/batchee/README.md) | 2.0.0 :warning: |
| <!-- 20240503123932 --> [org.apache.sling.rewriter](../content/org/apache/sling/org.apache.sling.rewriter/README.md) | 1.4.4 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-rewriter/pull/14) |
| <!-- 20240501164724 --> [turbine-webapp-6.0](../content/org/apache/turbine/turbine-webapp-6.0/README.md) | 3.0.0 :warning: |
| <!-- 20240420172655 --> [unexepack](../content/io/github/albertus82/unexepack/README.md) | 0.3.1 :warning: |
| <!-- 20240414093609 --> [maven-scm](../content/org/apache/maven/scm/README.md) | 2.1.0 :warning: |
| <!-- 20240312215350 --> [cdevents-sdk-java](../content/dev/cdevents/cdevents-sdk-java/README.md) | 0.3.1 :x: |
| <!-- 20240229131606 --> [angus-activation-project](../content/org/eclipse/angus/activation/README.md) | 2.0.2 :warning: |
| <!-- 20240126192007 --> [io.wcm.handler.richtext](../content/io/wcm/io.wcm.handler/richtext/README.md) | 2.0.0 :warning: |
| <!-- 20240122143033 --> [org.apache.sling.feature.extension.unpack](../content/org/apache/sling/org.apache.sling.feature.extension.unpack/README.md) | 0.4.0 :warning: |
| <!-- 20240118001405 --> [scimple](../content/org/apache/directory/scimple/README.md) | 1.0.0-M1 :warning: |
| <!-- 20231109041226 --> [org.apache.sling.cms](../content/org/apache/sling/org.apache.sling.cms/README.md) | 1.1.8 :warning: |
| <!-- 20230818102937 --> [microservice-security-autoconfiguration](../content/io/dwpbank/movewp3/microservice-security-autoconfiguration/README.md) | 3.0.2 :warning: [:memo:](https://github.com/movewp3/microservice-security-autoconfiguration/pull/19) |
| <!-- 20230721020416 --> [auto-record](../content/pl/com/labaj/auto-record/README.md) | 2.1.0 :x: |
| <!-- 20230713001648 --> [org.apache.sling.scripting.groovy](../content/org/apache/sling/org.apache.sling.scripting.groovy/README.md) | 1.3.0 :warning: |
| <!-- 20230620223800 --> [xml-maven-plugin](../content/org/codehaus/mojo/xml-maven-plugin/README.md) | 1.1.0 :warning: |
| <!-- 20230510171047 --> [Apache-Synapse](../content/org/apache/synapse/README.md) | 3.0.2 :warning: [:memo:](https://issues.apache.org/jira/browse/SYNAPSE-1128) |
| <!-- 20230305132220 --> [jarviz-core](../content/org/kordamp/jarviz/README.md) | 0.3.0 :warning: |
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
| <!-- 20220525193321 --> [jdo](../content/org/apache/jdo/README.md) | 3.2.1 :warning: [:memo:](https://github.com/apache/db-jdo/pull/49) |
| <!-- 20220420183148 --> [logback-parent-db](../content/ch/qos/logback/db/README.md) | 1.2.11.1 :warning: [:memo:](https://github.com/qos-ch/logback-db/pull/2) |
| <!-- 20220314110853 --> [org.apache.sling.launchpad.testing](../content/org/apache/sling/org.apache.sling.launchpad.testing/README.md) | 12 :warning: |
| <!-- 20220303223913 --> [apache-any23](../content/org/apache/any23/README.md) | 2.7 :warning: [:memo:](https://github.com/apache/any23/pull/270) |
| <!-- 20220228062841 --> [isis-parent](../content/org/apache/isis/README.md) | 2.0.0-M7 :warning: |
| <!-- 20211221090833 --> [scriptingbundle-maven-plugin](../content/org/apache/sling/scriptingbundle-maven-plugin/README.md) | 0.5.2 :warning: |
| <!-- 20211212220158 --> [org.apache.sling.commons.messaging.mail](../content/org/apache/sling/org.apache.sling.commons.messaging.mail/README.md) | 2.0.0 :warning: |
| <!-- 20211018122406 --> [org.apache.sling.commons.crypto](../content/org/apache/sling/org.apache.sling.commons.crypto/README.md) | 1.1.0 :warning: [:memo:](https://issues.apache.org/jira/browse/SLING-11907) |
| <!-- 20201226140242 --> [maven-artifact-transfer](../content/org/apache/maven/shared/maven-artifact-transfer/README.md) | 0.13.1 :warning: [:memo:](https://github.com/apache/maven-artifact-transfer/commit/c2106c0500cc7c70c27581f117bf86e6185073c6) |
| <!-- 20200511133844 --> [org.apache.sling.installer.factory.packages](../content/org/apache/sling/org.apache.sling.installer.factory.packages/README.md) | 1.0.4 :warning: |
<!-- END GENERATED NEWEST NOT REPRODUCIBLE -->
