New Releases of Previously Rebuilt Projects Status Report
=========================================================

[Main report](../content/README.md)

### Issues (if any) to fix in existing buildspec

- unexpected `diffoscope` in buildspec:
`buildcompare` says `ko=0` but `buildspec` configures a `diffoscope` value in following releases:
<!-- BEGIN GENERATED UNEXPECTED DIFFOSCOPE -->
<!-- END GENERATED UNEXPECTED DIFFOSCOPE -->

- `diffoscope` in buildspec points to missing file:
`buildspec` configures a `diffoscope` value to missing file in following releases:
<!-- BEGIN GENERATED MISSING DIFFOSCOPE -->
<!-- END GENERATED MISSING DIFFOSCOPE -->


New Release of Previously Reproducible
--------------------------------------

<!-- BEGIN GENERATED ADD OK -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20261030194906 --> [enforcer](../content/org/apache/maven/enforcer/README.md) | [3.6.3](../content/org/apache/maven/enforcer/maven-enforcer-plugin-3.6.3.buildspec) :white_check_mark: | [3.7.0](../content/org/apache/maven/enforcer/maven-enforcer-plugin-3.7.0.buildspec) | `bin/add-new-release.sh content/org/apache/maven/enforcer/maven-enforcer-plugin-3.6.3.buildspec 3.7.0` |
| <!-- 20261030145838 --> [org.apache.sling.feature.analyser](../content/org/apache/sling/org.apache.sling.feature.analyser/README.md) | [2.0.20](../content/org/apache/sling/org.apache.sling.feature.analyser/org.apache.sling.feature.analyser-2.0.20.buildspec) :white_check_mark: | [2.0.22](../content/org/apache/sling/org.apache.sling.feature.analyser/org.apache.sling.feature.analyser-2.0.22.buildspec) | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.feature.analyser/org.apache.sling.feature.analyser-2.0.20.buildspec 2.0.22` |
| <!-- 20261030144900 --> [slingfeature-maven-plugin](../content/org/apache/sling/slingfeature-maven-plugin/README.md) | [1.9.6](../content/org/apache/sling/slingfeature-maven-plugin/slingfeature-maven-plugin-1.9.6.buildspec) :white_check_mark: | [1.9.8](../content/org/apache/sling/slingfeature-maven-plugin/slingfeature-maven-plugin-1.9.8.buildspec) | `bin/add-new-release.sh content/org/apache/sling/slingfeature-maven-plugin/slingfeature-maven-plugin-1.9.6.buildspec 1.9.8` |
| <!-- 20261030131316 --> [jena-kafka](../content/io/telicent/jena/jena-kafka/README.md) | [3.4.2](../content/io/telicent/jena/jena-kafka/jena-kafka-3.4.2.buildspec) :white_check_mark: | [3.4.3](../content/io/telicent/jena/jena-kafka/jena-kafka-3.4.3.buildspec) | `bin/add-new-release.sh content/io/telicent/jena/jena-kafka/jena-kafka-3.4.2.buildspec 3.4.3` |
| <!-- 20261030100608 --> [langchain4j](../content/dev/langchain4j/README.md) | [1.23.0](../content/dev/langchain4j/langchain4j-1.23.0.buildspec) :white_check_mark: | 1.19.4 1.11.12  | `bin/add-new-release.sh content/dev/langchain4j/langchain4j-PREV.buildspec 1.19.4 1.11.12 ` |
| <!-- 20261030092908 --> [pmd](../content/net/sourceforge/pmd/README.md) | [7.28.0](../content/net/sourceforge/pmd/pmd-7.28.0.buildspec) :white_check_mark: | [7.29.0](../content/net/sourceforge/pmd/pmd-7.29.0.buildspec) | `bin/add-new-release.sh content/net/sourceforge/pmd/pmd-7.28.0.buildspec 7.29.0` |
| <!-- 20261030075539 --> [units-catalog](../content/com/cognite/units/units-catalog/README.md) | [0.1.27](../content/com/cognite/units/units-catalog/units-catalog-0.1.27.buildspec) :white_check_mark: | [0.2.0](../content/com/cognite/units/units-catalog/units-catalog-0.2.0.buildspec) | `bin/add-new-release.sh content/com/cognite/units/units-catalog/units-catalog-0.1.27.buildspec 0.2.0` |
| <!-- 20261030070411 --> [flowlogix](../content/com/flowlogix/README.md) | [11.7.3](../content/com/flowlogix/flowlogix-11.7.3.buildspec) :white_check_mark: | [11.7.4](../content/com/flowlogix/flowlogix-11.7.4.buildspec) | `bin/add-new-release.sh content/com/flowlogix/flowlogix-11.7.3.buildspec 11.7.4` |
| <!-- 20261029114957 --> [hibernate-reactive-core](../content/org/hibernate/reactive/hibernate-reactive/README.md) | [5.1.0.Beta1](../content/org/hibernate/reactive/hibernate-reactive/hibernate-reactive-5.1.0.Beta1.buildspec) :white_check_mark: | 5.0.0.Beta3  | `bin/add-new-release.sh content/org/hibernate/reactive/hibernate-reactive/hibernate-reactive-PREV.buildspec 5.0.0.Beta3 ` |
| <!-- 20261028212023 --> [tika](../content/org/apache/tika/README.md) | [4.2.0](../content/org/apache/tika/tika-4.2.0.buildspec) :white_check_mark: | 4.0.0 4.0.0-beta-1  | `bin/add-new-release.sh content/org/apache/tika/tika-PREV.buildspec 4.0.0 4.0.0-beta-1 ` |
<!-- END GENERATED ADD OK -->

Apache Release Candidate in Staging https://repository.apache.org
-----------------------------------------------------------------

<!-- BEGIN GENERATED ADD STAGING -->
|    | artifactId | from | to | command |
| -- | ---------- | ---- | -- | ------- |
| <!-- 20261029205856 --> [:mailbox:](https://lists.apache.org/list?dev@wicket.apache.org:lte=1M:VOTE) | [wicket-parent](../content/org/apache/wicket/README.md) | [10.11.0](../content/org/apache/wicket/wicket-parent-10.11.0.buildspec) :white_check_mark: | [11.0.0](../content/org/apache/wicket/wicket-parent-11.0.0.buildspec)  | `bin/add-new-release.sh content/org/apache/wicket/wicket-parent-10.11.0.buildspec 11.0.0 staging` |
| <!-- 20261017113837 --> [:mailbox:](https://lists.apache.org/list?dev@commons.apache.org:lte=1M:VOTE) | [commons-parent](../content/org/apache/commons/parent/README.md) | [106](../content/org/apache/commons/parent/commons-parent-106.buildspec) :white_check_mark: | [107](../content/org/apache/commons/parent/commons-parent-107.buildspec)  | `bin/add-new-release.sh content/org/apache/commons/parent/commons-parent-106.buildspec 107 staging` |
| <!-- 20260914083036 --> [:mailbox:](https://lists.apache.org/list?dev@syncope.apache.org:lte=1M:VOTE) | [syncope](../content/org/apache/syncope/README.md) | [4.1.3](../content/org/apache/syncope/syncope-4.1.3.buildspec) :warning: [:memo:](https://github.com/apache/syncope/pull/1533) | [4.1.4](../content/org/apache/syncope/syncope-4.1.4.buildspec)  | `bin/add-new-release.sh content/org/apache/syncope/syncope-4.1.3.buildspec 4.1.4 staging` |
| <!-- 20260817084448 --> [:mailbox:](https://lists.apache.org/list?dev@hop.apache.org:lte=1M:VOTE) | [hop](../content/org/apache/hop/README.md) | [2.19.0](../content/org/apache/hop/hop-2.19.0.buildspec) :white_check_mark: | [2.20.0](../content/org/apache/hop/hop-2.20.0.buildspec)  | `bin/add-new-release.sh content/org/apache/hop/hop-2.19.0.buildspec 2.20.0 staging` |
| <!-- 20260717142256 --> [:mailbox:](https://lists.apache.org/list?dev@ratis.apache.org:lte=1M:VOTE) | [ratis-thirdparty](../content/org/apache/ratis/ratis-thirdparty/README.md) | [1.1.0](../content/org/apache/ratis/ratis-thirdparty/ratis-thirdparty-1.1.0.buildspec) :white_check_mark: | [1.1.1](../content/org/apache/ratis/ratis-thirdparty/ratis-thirdparty-1.1.1.buildspec)  | `bin/add-new-release.sh content/org/apache/ratis/ratis-thirdparty/ratis-thirdparty-1.1.0.buildspec 1.1.1 staging` |
| <!-- 20260427075208 --> [:mailbox:](https://lists.apache.org/list?dev@ignite.apache.org:lte=1M:VOTE) | [apache-ignite](../content/org/apache/ignite/README.md) | [2.18.0](../content/org/apache/ignite/ignite-2.18.0.buildspec) :warning: [:memo:](https://github.com/apache/ignite/pull/12982) | [3.0.0-alpha5](../content/org/apache/ignite/ignite-3.0.0-alpha5.buildspec)  | `bin/add-new-release.sh content/org/apache/ignite/ignite-2.18.0.buildspec 3.0.0-alpha5 staging` |
| <!-- 20251128133200 --> [:mailbox:](https://lists.apache.org/list?dev@hugegraph.apache.org:lte=1M:VOTE) | [hugegraph](../content/org/apache/hugegraph/README.md) | [1.7.0](../content/org/apache/hugegraph/hugegraph-1.7.0.buildspec) :warning: | [1.8.0](../content/org/apache/hugegraph/hugegraph-1.8.0.buildspec)  | `bin/add-new-release.sh content/org/apache/hugegraph/hugegraph-1.7.0.buildspec 1.8.0 staging` |
| <!-- 20250911080143 --> [:mailbox:](https://lists.apache.org/list?dev@amoro.apache.org:lte=1M:VOTE) | [amoro-parent](../content/org/apache/amoro/README.md) | [0.8.1-incubating](../content/org/apache/amoro/amoro-0.8.1-incubating.buildspec) :white_check_mark: | [0.9.0-incubating](../content/org/apache/amoro/amoro-0.9.0-incubating.buildspec)  | `bin/add-new-release.sh content/org/apache/amoro/amoro-0.8.1-incubating.buildspec 0.9.0-incubating staging` |
| <!-- 20250826034333 --> [:mailbox:](https://lists.apache.org/list?dev@sling.apache.org:lte=1M:VOTE) | [org.apache.sling.i18n](../content/org/apache/sling/org.apache.sling.i18n/README.md) | [3.0.0](../content/org/apache/sling/org.apache.sling.i18n/org.apache.sling.i18n-3.0.0.buildspec) :white_check_mark: | [3.0.2](../content/org/apache/sling/org.apache.sling.i18n/org.apache.sling.i18n-3.0.2.buildspec)  | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.i18n/org.apache.sling.i18n-3.0.0.buildspec 3.0.2 staging` |
| <!-- 20241207223709 --> [:mailbox:](https://lists.apache.org/list?dev@royale.apache.org:lte=1M:VOTE) | [royale-typedefs-parent](../content/org/apache/royale/typedefs/README.md) | [0.9.12](../content/org/apache/royale/typedefs/royale-typedefs-0.9.12.buildspec) :warning: | [1.0.0](../content/org/apache/royale/typedefs/royale-typedefs-1.0.0.buildspec)  | `bin/add-new-release.sh content/org/apache/royale/typedefs/royale-typedefs-0.9.12.buildspec 1.0.0 staging` |
| <!-- 20241207223516 --> [:mailbox:](https://lists.apache.org/list?dev@royale.apache.org:lte=1M:VOTE) | [royale-framework-parent](../content/org/apache/royale/framework/README.md) | [0.9.12](../content/org/apache/royale/framework/royale-framework-0.9.12.buildspec) :warning: | [1.0.0](../content/org/apache/royale/framework/royale-framework-1.0.0.buildspec)  | `bin/add-new-release.sh content/org/apache/royale/framework/royale-framework-0.9.12.buildspec 1.0.0 staging` |
| <!-- 20241207221427 --> [:mailbox:](https://lists.apache.org/list?dev@royale.apache.org:lte=1M:VOTE) | [compiler](../content/org/apache/royale/compiler/README.md) | [0.9.12](../content/org/apache/royale/compiler/royale-compiler-0.9.12.buildspec) :warning: | [1.0.0](../content/org/apache/royale/compiler/royale-compiler-1.0.0.buildspec)  | `bin/add-new-release.sh content/org/apache/royale/compiler/royale-compiler-0.9.12.buildspec 1.0.0 staging` |
<!-- END GENERATED ADD STAGING -->

New Release of non-Reproducible Previous
----------------------------------------

<!-- BEGIN GENERATED ADD KO -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20261030202146 --> [jpmml-statsmodels](../content/org/jpmml/jpmml-statsmodels/README.md) | [1.3.13](../content/org/jpmml/jpmml-statsmodels/jpmml-statsmodels-1.3.13.buildspec) :warning: | [1.3.14](../content/org/jpmml/jpmml-statsmodels/jpmml-statsmodels-1.3.14.buildspec) | `bin/add-new-release.sh content/org/jpmml/jpmml-statsmodels/jpmml-statsmodels-1.3.13.buildspec 1.3.14` |
| <!-- 20261030182952 --> [zookeeper](../content/org/apache/zookeeper/README.md) | [3.9.6](../content/org/apache/zookeeper/zookeeper-3.9.6.buildspec) :warning: | [3.9.7](../content/org/apache/zookeeper/zookeeper-3.9.7.buildspec) | `bin/add-new-release.sh content/org/apache/zookeeper/zookeeper-3.9.6.buildspec 3.9.7` |
| <!-- 20261030165336 --> [rdf-abac](../content/io/telicent/jena/rdf-abac/README.md) | [4.2.0](../content/io/telicent/jena/rdf-abac/rdf-abac-4.2.0.buildspec) :warning: | [4.2.1](../content/io/telicent/jena/rdf-abac/rdf-abac-4.2.1.buildspec) | `bin/add-new-release.sh content/io/telicent/jena/rdf-abac/rdf-abac-4.2.0.buildspec 4.2.1` |
| <!-- 20261030142313 --> [swagger-ui](../content/org/webjars/swagger-ui/README.md) | [5.32.11](../content/org/webjars/swagger-ui/swagger-ui-5.32.11.buildspec) :x: [:memo:](https://github.com/webjars/swagger-ui/issues/212) | [5.34.1](../content/org/webjars/swagger-ui/swagger-ui-5.34.1.buildspec) | `bin/add-new-release.sh content/org/webjars/swagger-ui/swagger-ui-5.32.11.buildspec 5.34.1` |
| <!-- 20261030061929 --> [ozone-main](../content/org/apache/ozone/README.md) | [2.2.1](../content/org/apache/ozone/ozone-2.2.1.buildspec) :warning: | [2.2.2](../content/org/apache/ozone/ozone-2.2.2.buildspec) | `bin/add-new-release.sh content/org/apache/ozone/ozone-2.2.1.buildspec 2.2.2` |
| <!-- 20261029001013 --> [pinot](../content/org/apache/pinot/README.md) | [1.5.1](../content/org/apache/pinot/pinot-1.5.1.buildspec) :warning: [:memo:](https://github.com/apache/pinot/pull/18812) | [1.6.0](../content/org/apache/pinot/pinot-1.6.0.buildspec) | `bin/add-new-release.sh content/org/apache/pinot/pinot-1.5.1.buildspec 1.6.0` |
| <!-- 20261028223845 --> [legend-engine](../content/org/finos/legend/engine/README.md) | [4.71.1](../content/org/finos/legend/engine/legend-engine-4.71.1.buildspec) :warning: [:memo:](https://github.com/finos/legend-engine/pull/1337#issuecomment-1508509457) | [5.0.3](../content/org/finos/legend/engine/legend-engine-5.0.3.buildspec) | `bin/add-new-release.sh content/org/finos/legend/engine/legend-engine-4.71.1.buildspec 5.0.3` |
| <!-- 20261026203159 --> [opentelemetry-instrumentation-api](../content/io/opentelemetry/instrumentation/README.md) | [2.27.0](../content/io/opentelemetry/instrumentation/opentelemetry-2.27.0.buildspec) :warning: | [2.33.1](../content/io/opentelemetry/instrumentation/opentelemetry-2.33.1.buildspec) | `bin/add-new-release.sh content/io/opentelemetry/instrumentation/opentelemetry-2.27.0.buildspec 2.33.1` |
| <!-- 20261022094711 --> [camel](../content/org/apache/camel/camel/README.md) | [4.21.0](../content/org/apache/camel/camel/camel-4.21.0.buildspec) :warning: | [4.23.0](../content/org/apache/camel/camel/camel-4.23.0.buildspec) | `bin/add-new-release.sh content/org/apache/camel/camel/camel-4.21.0.buildspec 4.23.0` |
| <!-- 20261016003108 --> [trino-root](../content/io/trino/README.md) | [477](../content/io/trino/trino-477.buildspec) :warning: | [484](../content/io/trino/trino-484.buildspec) | `bin/add-new-release.sh content/io/trino/trino-477.buildspec 484` |
| <!-- 20261013160846 --> [parent](../content/org/apache/sis/README.md) | [1.3](../content/org/apache/sis/parent-1.3.buildspec) :warning: [:memo:](https://github.com/apache/sis/pull/36) | [1.7](../content/org/apache/sis/parent-1.7.buildspec) | `bin/add-new-release.sh content/org/apache/sis/parent-1.3.buildspec 1.7` |
| <!-- 20261012092930 --> [paimon-parent](../content/org/apache/paimon/README.md) | [2.0.0](../content/org/apache/paimon/paimon-parent-2.0.0.buildspec) :warning: | [2.1.0](../content/org/apache/paimon/paimon-parent-2.1.0.buildspec) | `bin/add-new-release.sh content/org/apache/paimon/paimon-parent-2.0.0.buildspec 2.1.0` |
| <!-- 20261010092404 --> [com.io7m.xstructural](../content/com/io7m/xstructural/README.md) | [2.1.0](../content/com/io7m/xstructural/com.io7m.xstructural-2.1.0.buildspec) :warning: | [3.0.0-beta0003](../content/com/io7m/xstructural/com.io7m.xstructural-3.0.0-beta0003.buildspec) | `bin/add-new-release.sh content/com/io7m/xstructural/com.io7m.xstructural-2.1.0.buildspec 3.0.0-beta0003` |
| <!-- 20261003124530 --> [glassfish-parent](../content/org/glassfish/main/README.md) | [9.0.0-M2](../content/org/glassfish/main/glassfish-9.0.0-M2.buildspec) :x: [:memo:](https://github.com/eclipse-ee4j/glassfish/issues/24615#issuecomment-3850537179) | [9.0.0-M3](../content/org/glassfish/main/glassfish-9.0.0-M3.buildspec) | `bin/add-new-release.sh content/org/glassfish/main/glassfish-9.0.0-M2.buildspec 9.0.0-M3` |
| <!-- 20260907071444 --> [plc4x-parent](../content/org/apache/plc4x/plc4x/README.md) | [0.13.1](../content/org/apache/plc4x/plc4x/plc4x-0.13.1.buildspec) :warning: [:memo:](https://github.com/apache/plc4x/pull/2407) | [1.0.0](../content/org/apache/plc4x/plc4x/plc4x-1.0.0.buildspec) | `bin/add-new-release.sh content/org/apache/plc4x/plc4x/plc4x-0.13.1.buildspec 1.0.0` |
| <!-- 20260901195916 --> [git-commit-id-maven-plugin](../content/io/github/git-commit-id/README.md) | [9.0.0](../content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec) :x: | [10.0.1](../content/io/github/git-commit-id/git-commit-id-maven-plugin-10.0.1.buildspec) | `bin/add-new-release.sh content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec 10.0.1` |
| <!-- 20260831052114 --> [arthas-all](../content/com/taobao/arthas/README.md) | [4.1.0](../content/com/taobao/arthas/arthas-4.1.0.buildspec) :warning: [:memo:](https://github.com/alibaba/arthas/pull/3001) | [4.3.5](../content/com/taobao/arthas/arthas-4.3.5.buildspec) | `bin/add-new-release.sh content/com/taobao/arthas/arthas-4.1.0.buildspec 4.3.5` |
| <!-- 20260824185236 --> [hive](../content/org/apache/hive/README.md) | [4.2.0](../content/org/apache/hive/hive-4.2.0.buildspec) :warning: [:memo:](https://issues.apache.org/jira/browse/HIVE-28186) | [4.2.1](../content/org/apache/hive/hive-4.2.1.buildspec) | `bin/add-new-release.sh content/org/apache/hive/hive-4.2.0.buildspec 4.2.1` |
| <!-- 20260817164403 --> [avro-toplevel](../content/org/apache/avro/README.md) | [1.12.1](../content/org/apache/avro/avro-1.12.1.buildspec) :warning: | [1.12.2](../content/org/apache/avro/avro-1.12.2.buildspec) | `bin/add-new-release.sh content/org/apache/avro/avro-1.12.1.buildspec 1.12.2` |
| <!-- 20260816162132 --> [plotsquared-bukkit](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/README.md) | [7.5.4](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.4.buildspec) :x: | [7.6.0](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.6.0.buildspec) | `bin/add-new-release.sh content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.4.buildspec 7.6.0` |
| <!-- 20260629072316 --> [io.wcm.wcm.ui.granite](../content/io/wcm/io.wcm.wcm/ui/granite/README.md) | [1.9.12](../content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.9.12.buildspec) :warning: | [1.12.0](../content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.12.0.buildspec) | `bin/add-new-release.sh content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.9.12.buildspec 1.12.0` |
| <!-- 20260603202213 --> [jquery-ui](../content/org/webjars/jquery-ui/README.md) | [1.14.2](../content/org/webjars/jquery-ui/jquery-ui-1.14.2.buildspec) :x: | [1.14.2+1](../content/org/webjars/jquery-ui/jquery-ui-1.14.2+1.buildspec) | `bin/add-new-release.sh content/org/webjars/jquery-ui/jquery-ui-1.14.2.buildspec 1.14.2+1` |
| <!-- 20251022112208 --> [flexmonster](../content/org/webjars/flexmonster/README.md) | [2.9.107](../content/org/webjars/flexmonster/flexmonster-2.9.107.buildspec) :x: | [2.9.114-1](../content/org/webjars/flexmonster/flexmonster-2.9.114-1.buildspec) | `bin/add-new-release.sh content/org/webjars/flexmonster/flexmonster-2.9.107.buildspec 2.9.114-1` |
<!-- END GENERATED ADD KO -->

### Newest not Reproducible

or maybe Reproducible but we were not able to reproduce...

<!-- BEGIN GENERATED NEWEST NOT REPRODUCIBLE -->
| artifactId | newest |
| ---------- | ------ |
| <!-- 20261029153822 --> [javabean-tester](../content/com/github/hazendaz/javabean-tester/README.md) | 2.13.0 :warning: |
| <!-- 20261028195250 --> [jpmml-python](../content/org/jpmml/jpmml-python/README.md) | 1.3.22 :warning: |
| <!-- 20261028184400 --> [quarkus-project](../content/io/quarkus/README.md) | 4.0.0.Beta2 :warning: |
| <!-- 20261028161319 --> [hibernate-core](../content/org/hibernate/orm/hibernate-core/README.md) | 8.0.0.Beta4 :warning: |
| <!-- 20261027201821 --> [clojure](../content/org/clojure/README.md) | 1.13.0-alpha11 :warning: [:memo:](https://clojure.atlassian.net/browse/CLJ-2959) |
| <!-- 20261027192136 --> [toolbox](../content/eu/maveniverse/maven/toolbox/README.md) | 0.16.1 :warning: |
| <!-- 20261026091033 --> [pulsar](../content/org/apache/pulsar/README.md) | 5.0.1 :warning: |
| <!-- 20261025185315 --> [convex](../content/world/convex/README.md) | 0.8.18 :warning: |
| <!-- 20261023175321 --> [gwt-commons-lang3](../content/de/knightsoft-net/gwt-commons-lang3/README.md) | 3.21.0-1 :warning: |
| <!-- 20261023042826 --> [mybatis](../content/org/mybatis/mybatis/README.md) | 3.6.0 :warning: |
| <!-- 20261022093907 --> [lz4-java](../content/at/yawk/lz4/lz4-java/README.md) | 1.12.1 :warning: |
| <!-- 20261020184759 --> [jpmml-h2o](../content/org/jpmml/jpmml-h2o/README.md) | 1.3.7 :warning: |
| <!-- 20261019071846 --> [maven-jar-plugin](../content/org/apache/maven/plugins/maven-jar-plugin/README.md) | 4.0.0-beta-2 :warning: |
| <!-- 20261018121811 --> [openfasttrace](../content/org/itsallcode/openfasttrace/README.md) | 4.11.0 :warning: |
| <!-- 20261016065305 --> [jpmml-xgboost](../content/org/jpmml/jpmml-xgboost/README.md) | 1.9.11 :warning: |
| <!-- 20261015200341 --> [jpmml-lightgbm](../content/org/jpmml/jpmml-lightgbm/README.md) | 1.6.8 :warning: |
| <!-- 20261015171323 --> [io.wcm.caconfig.editor.root](../content/io/wcm/io.wcm.caconfig/README.md) | 1.18.0 :warning: |
| <!-- 20261014140249 --> [reload4j](../content/ch/qos/reload4j/README.md) | 1.2.27 :warning: |
| <!-- 20261014110834 --> [jpmml-converter](../content/org/jpmml/jpmml-converter/README.md) | 1.6.11 :warning: |
| <!-- 20261014065750 --> [yupiik-tools-maven-plugin-parent](../content/io/yupiik/maven/plugin/README.md) | 1.3.0 :warning: |
| <!-- 20261013031251 --> [caffeine](../content/com/github/ben-manes/caffeine/README.md) | 3.3.1 :warning: |
| <!-- 20261012044837 --> [spotbugs-maven-plugin](../content/com/github/spotbugs/spotbugs-maven-plugin/README.md) | 4.10.5.0 :warning: |
| <!-- 20261011091257 --> [jpmml-evaluator](../content/org/jpmml/jpmml-evaluator/README.md) | 1.7.8 :warning: |
| <!-- 20261008121836 --> [jackrabbit-parent](../content/org/apache/jackrabbit/jackrabbit/README.md) | 2.23.6-beta :warning: |
| <!-- 20261007142634 --> [scg-base](../content/io/telicent/smart-caches/graph/scg-base/README.md) | 1.2.3 :warning: |
| <!-- 20261006195828 --> [parent](../content/org/phoebus/README.md) | 6.0.0 :warning: |
| <!-- 20261001083826 --> [maven](../content/org/apache/maven/maven/README.md) | 4.0.0-rc-7 :warning: |
| <!-- 20261001081827 --> [maven-resolver](../content/org/apache/maven/resolver/maven-resolver/README.md) | 2.0.24 :warning: |
| <!-- 20260930181152 --> [jpmml-model](../content/org/jpmml/jpmml-model/README.md) | 1.7.8 :warning: [:memo:](https://github.com/jpmml/jpmml-model/issues/42) |
| <!-- 20260927132019 --> [karaf](../content/org/apache/karaf/karaf/README.md) | 4.4.12 :warning: |
| <!-- 20260926112842 --> [lnd-rest-client](../content/net/osslabz/lnd-rest-client/README.md) | 1.0.2 :warning: |
| <!-- 20260924102434 --> [kubernetes-client-project](../content/io/fabric8/kubernetes-client/README.md) | 8.0.0 :warning: |
| <!-- 20260923140810 --> [mockito-core](../content/org/mockito/mockito-core/README.md) | 5.24.0 :warning: |
| <!-- 20260922145701 --> [slf4j-parent](../content/org/slf4j/README.md) | 2.1.0-alpha1 :warning: |
| <!-- 20260922071851 --> [flink-kubernetes-operator-parent](../content/org/apache/flink/flink-kubernetes-operator/README.md) | 1.16.1 :warning: |
| <!-- 20260921103916 --> [avaje-http-parent](../content/io/avaje/http/README.md) | 3.12.1 :warning: |
| <!-- 20260920191307 --> [psi-probe](../content/com/github/psi-probe/README.md) | 5.5.0 :warning: |
| <!-- 20260917164901 --> [efx-toolkit-java](../content/eu/europa/ted/eforms/efx-toolkit-java/README.md) | 2.0.0-alpha.9 :warning: |
| <!-- 20260917160638 --> [eforms-core-java](../content/eu/europa/ted/eforms/eforms-core-java/README.md) | 1.9.1 :warning: |
| <!-- 20260914110839 --> [jdplus-main](../content/eu/europa/ec/joinup/sat/jdplus-main/README.md) | 3.9.0 :warning: |
| <!-- 20260914104811 --> [eforms-sdk](../content/eu/europa/ted/eforms/eforms-sdk/README.md) | 2.0.0-alpha.4 :warning: |
| <!-- 20260914083036 --> [syncope](../content/org/apache/syncope/README.md) | 4.1.3 :warning: [:memo:](https://github.com/apache/syncope/pull/1533) |
| <!-- 20260913211956 --> [nifi](../content/org/apache/nifi/nifi/README.md) | 2.12.0 :warning: |
| <!-- 20260911213804 --> [xml-maven-plugin](../content/org/codehaus/mojo/xml-maven-plugin/README.md) | 1.2.2 :warning: |
| <!-- 20260908184255 --> [acs-aem-commons](../content/com/adobe/acs/aem-commons/README.md) | 6.17.6 :warning: |
| <!-- 20260901084954 --> [jdplus-sdmx](../content/com/github/nbbrd/jdplus-sdmx/README.md) | 3.5.0 :warning: [:memo:](https://github.com/apache/netbeans-mavenutils-nbm-maven-plugin/issues/133) |
| <!-- 20260831075129 --> [jreleaser](../content/org/jreleaser/README.md) | 1.26.0 :warning: |
| <!-- 20260830112544 --> [jpmml-sklearn](../content/org/jpmml/jpmml-sklearn/README.md) | 1.9.41 :warning: |
| <!-- 20260827151941 --> [shiro-root](../content/org/apache/shiro/README.md) | 3.0.1 :warning: [:memo:](https://github.com/apache/shiro/pull/2887) |
| <!-- 20260826023519 --> [avaje-metrics-parent](../content/io/avaje/metrics/README.md) | 10.4-RC6 :warning: |
| <!-- 20260824123503 --> [scriptingbundle-maven-plugin](../content/org/apache/sling/scriptingbundle-maven-plugin/README.md) | 0.5.4 :warning: |
| <!-- 20260824123503 --> [org.apache.sling.servlets.resolver](../content/org/apache/sling/org.apache.sling.servlets.resolver/README.md) | 3.0.10 :warning: |
| <!-- 20260822205316 --> [jpmml-sparkml](../content/org/jpmml/jpmml-sparkml/README.md) | 3.4.0 :warning: |
| <!-- 20260822162335 --> [jspwiki-builder](../content/org/apache/jspwiki/README.md) | 3.0.0 :x: |
| <!-- 20260820212318 --> [unexepack](../content/io/github/albertus82/unexepack/README.md) | 1.1.0 :warning: |
| <!-- 20260816152516 --> [fastasyncvoxelsniper](../content/com/intellectualsites/fastasyncvoxelsniper/fastasyncvoxelsniper/README.md) | 3.2.5 :x: |
| <!-- 20260816073538 --> [tycho](../content/org/eclipse/tycho/README.md) | 5.0.4 :warning: |
| <!-- 20260814130722 --> [sdmx-dl-parent](../content/com/github/nbbrd/sdmx-dl/README.md) | 3.2.0 :warning: |
| <!-- 20260813091535 --> [dubbo](../content/org/apache/dubbo/README.md) | 3.3.6 :warning: |
| <!-- 20260805201532 --> [gherkin](../content/io/cucumber/gherkin/README.md) | 42.0.1 :warning: |
| <!-- 20260803104159 --> [dependency-check-parent](../content/org/owasp/dependency-check/README.md) | 13.0.0 :warning: |
| <!-- 20260724154657 --> [systemds](../content/org/apache/systemds/README.md) | 3.4.0 :warning: |
| <!-- 20260717105919 --> [eforms-sdk-analyzer](../content/eu/europa/ted/eforms/eforms-sdk-analyzer/README.md) | 1.15.1 :warning: |
| <!-- 20260716181142 --> [orc](../content/org/apache/orc/README.md) | 2.3.1 :warning: |
| <!-- 20260716130751 --> [mybatis-spring-boot](../content/org/mybatis/spring/boot/README.md) | 4.1.0 :warning: |
| <!-- 20260708170517 --> [font-awesome](../content/org/webjars/font-awesome/README.md) | 7.3.0 :x: |
| <!-- 20260703113531 --> [jdplus-incubator](../content/eu/europa/ec/joinup/sat/jdplus-incubator/README.md) | 2.5.2 :warning: |
| <!-- 20260702124523 --> [jdplus-benchmarking](../content/eu/europa/ec/joinup/sat/jdplus-benchmarking/README.md) | 2.2.0 :warning: |
| <!-- 20260620074147 --> [project](../content/org/glassfish/mq/README.md) | 6.9.0 :warning: |
| <!-- 20260614224917 --> [htmlcompressor](../content/com/github/hazendaz/htmlcompressor/README.md) | 2.4.1 :warning: |
| <!-- 20260611192538 --> [commons-daemon](../content/org/apache/commons/commons-daemon/README.md) | 1.6.1 :warning: |
| <!-- 20260608110523 --> [jandex-parent](../content/io/smallrye/jandex/README.md) | 3.6.0 :warning: |
| <!-- 20260608105512 --> [jakartaee-api-parent](../content/org/apache/tomee/jakartaee-api/README.md) | 11.0.0-M1 :warning: |
| <!-- 20260602174153 --> [org.apache.sling.feature.launcher](../content/org/apache/sling/org.apache.sling.feature.launcher/README.md) | 1.3.6 :warning: |
| <!-- 20260531180545 --> [com.io7m.certusine](../content/com/io7m/certusine/README.md) | 4.0.0-beta0004 :warning: |
| <!-- 20260509153514 --> [com.io7m.jade](../content/com/io7m/jade/README.md) | 1.1.0 :warning: |
| <!-- 20260509133319 --> [com.io7m.medrina](../content/com/io7m/medrina/README.md) | 1.1.0 :warning: |
| <!-- 20260503153112 --> [com.io7m.wendover](../content/com/io7m/wendover/README.md) | 1.1.1 :warning: |
| <!-- 20260501183711 --> [com.io7m.jbssio](../content/com/io7m/jbssio/README.md) | 4.0.0 :warning: |
| <!-- 20260427075208 --> [apache-ignite](../content/org/apache/ignite/README.md) | 2.18.0 :warning: [:memo:](https://github.com/apache/ignite/pull/12982) |
| <!-- 20260425180713 --> [com.io7m.calino](../content/com/io7m/calino/README.md) | 1.0.0 :warning: |
| <!-- 20260425140851 --> [com.io7m.quarrel](../content/com/io7m/quarrel/README.md) | 1.8.1 :warning: |
| <!-- 20260420152020 --> [jakarta.activation-api](../content/jakarta/activation/jakarta.activation-api/README.md) | 2.2.0-M2 :warning: |
| <!-- 20260408152748 --> [mybatis-generator](../content/org/mybatis/generator/README.md) | 2.0.0 :warning: |
| <!-- 20260323120711 --> [fediz](../content/org/apache/cxf/fediz/README.md) | 1.7.2 :warning: |
| <!-- 20260320142559 --> [apache-rat-project](../content/org/apache/rat/README.md) | 0.18 :warning: [:memo:](https://issues.apache.org/jira/browse/RAT-536) |
| <!-- 20260318202349 --> [commons-net](../content/org/apache/commons/net/README.md) | 3.13.0 :warning: |
| <!-- 20260309133844 --> [org.apache.sling.starter](../content/org/apache/sling/org.apache.sling.starter/README.md) | 14 :warning: |
| <!-- 20260307162319 --> [bundlebee](../content/io/yupiik/bundlebee/README.md) | 1.0.32 :warning: |
| <!-- 20260228122655 --> [org.apache.sling.models.impl](../content/org/apache/sling/org.apache.sling.models.impl/README.md) | 2.0.2 :warning: |
| <!-- 20260223090309 --> [org.apache.sling.pipes](../content/org/apache/sling/org.apache.sling.pipes/README.md) | 4.5.2 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-pipes/pull/20) |
| <!-- 20260207133315 --> [com.io7m.ervilla](../content/com/io7m/ervilla/README.md) | 1.1.0 :warning: |
| <!-- 20260205185517 --> [jpmml-codemodel](../content/org/jpmml/jpmml-codemodel/README.md) | 1.2.2 :warning: |
| <!-- 20260205180917 --> [jpmml-r](../content/org/jpmml/jpmml-r/README.md) | 1.7.9 :warning: |
| <!-- 20260204095522 --> [jpmml-transpiler](../content/org/jpmml/jpmml-transpiler/README.md) | 1.5.1 :warning: |
| <!-- 20260113132719 --> [klass](../content/cool/klass/README.md) | 0.6.0 :warning: [:memo:](https://github.com/liftwizard/klass/issues/608) |
| <!-- 20260108121527 --> [com.io7m.verona](../content/com/io7m/verona/README.md) | 1.1.0 :warning: |
| <!-- 20260106215513 --> [commons-pool2](../content/org/apache/commons/commons-pool2/README.md) | 2.13.1 :warning: |
| <!-- 20260104100712 --> [com.io7m.seltzer](../content/com/io7m/seltzer/README.md) | 1.3.0 :warning: |
| <!-- 20251230192514 --> [test.check](../content/org/clojure/test.check/README.md) | 1.1.3 :warning: |
| <!-- 20251222125523 --> [com.io7m.jsamplebuffer](../content/com/io7m/jsamplebuffer/README.md) | 1.0.1 :warning: |
| <!-- 20251215100318 --> [paapi5-java-sdk](../content/net/osslabz/paapi5-java-sdk/README.md) | 1.2.5 :x: |
| <!-- 20251210155324 --> [com.io7m.dixmont](../content/com/io7m/dixmont/README.md) | 3.1.0 :warning: |
| <!-- 20251207221548 --> [commons-text](../content/org/apache/commons/commons-text/README.md) | 1.15.0 :warning: |
| <!-- 20251130174727 --> [com.io7m.looseleaf](../content/com/io7m/looseleaf/README.md) | 4.0.0 :warning: |
| <!-- 20251128133200 --> [hugegraph](../content/org/apache/hugegraph/README.md) | 1.7.0 :warning: |
| <!-- 20251024120236 --> [com.io7m.cardant](../content/com/io7m/cardant/README.md) | 1.0.0-beta0002 :x: |
| <!-- 20250923122249 --> [jaxb-parent](../content/org/glassfish/jaxb/README.md) | 4.0.6 :warning: |
| <!-- 20250919111500 --> [jakarta.mail-api](../content/jakarta/mail/jakarta.mail-api/README.md) | 2.2.0-M1 :warning: |
| <!-- 20250912154637 --> [cellar](../content/org/apache/karaf/cellar/README.md) | 4.4.8 :warning: [:memo:](https://github.com/apache/karaf-cellar/pull/153) |
| <!-- 20250911141308 --> [angus-activation-project](../content/org/eclipse/angus/activation/README.md) | 2.1.0-M1 :warning: |
| <!-- 20250707085541 --> [java-sql-parent](../content/com/github/nbbrd/java-sql-util/README.md) | 1.0.7 :warning: |
| <!-- 20250628075449 --> [drill-root](../content/org/apache/drill/README.md) | 1.22.0 :warning: |
| <!-- 20250603145335 --> [io.takari.incrementalbuild](../content/io/takari/incrementalbuild/README.md) | 1.0.4 :warning: |
| <!-- 20250522194000 --> [com.io7m.gtyrell](../content/com/io7m/gtyrell/README.md) | 4.0.1 :warning: |
| <!-- 20250519085748 --> [org.apache.sling.feature.cpconverter](../content/org/apache/sling/org.apache.sling.feature.cpconverter/README.md) | 1.3.10 :warning: |
| <!-- 20250519063835 --> [org.apache.sling.distribution.core](../content/org/apache/sling/org.apache.sling.distribution.core/README.md) | 0.7.4 :warning: |
| <!-- 20250508083646 --> [org.apache.sling.scripting.sightly.testing](../content/org/apache/sling/org.apache.sling.scripting.sightly.testing/README.md) | 1.0.40-1.4.0 :warning: |
| <!-- 20250507175507 --> [com.io7m.mime2045](../content/com/io7m/mime2045/README.md) | 1.2.0 :warning: |
| <!-- 20250503162925 --> [com.io7m.trasco](../content/com/io7m/trasco/README.md) | 3.1.1 :warning: |
| <!-- 20250331033615 --> [aspectj-maven-plugin](../content/dev/aspectj/aspectj-maven-plugin/README.md) | 1.14.1 :warning: |
| <!-- 20250325094930 --> [camel-k-runtime-project](../content/org/apache/camel/camel-k-runtime/README.md) | 3.15.3 :warning: |
| <!-- 20250323131510 --> [packager-maven-plugin](../content/org/jpmml/packager-maven-plugin/README.md) | 1.1.0 :warning: |
| <!-- 20250226101218 --> [baremaps](../content/org/apache/baremaps/README.md) | 0.8.2 :warning: [:memo:](https://github.com/apache/incubator-baremaps/pull/951) |
| <!-- 20250217124403 --> [winrm](../content/org/sentrysoftware/winrm/README.md) | 1.1.01 :warning: |
| <!-- 20250214132638 --> [commons-vfs2](../content/org/apache/commons/commons-vfs2/README.md) | 2.10.0 :warning: |
| <!-- 20250203233329 --> [axiom](../content/org/apache/ws/commons/axiom/README.md) | 2.0.0 :warning: |
| <!-- 20250201215052 --> [ftpserver-parent](../content/org/apache/mina/ftpserver/README.md) | 1.2.1 :warning: |
| <!-- 20250103195806 --> [ldapchai](../content/com/github/ldapchai/README.md) | 0.8.7 :warning: |
| <!-- 20241207223709 --> [royale-typedefs-parent](../content/org/apache/royale/typedefs/README.md) | 0.9.12 :warning: |
| <!-- 20241207223516 --> [royale-framework-parent](../content/org/apache/royale/framework/README.md) | 0.9.12 :warning: |
| <!-- 20241207221427 --> [compiler](../content/org/apache/royale/compiler/README.md) | 0.9.12 :warning: |
| <!-- 20240916091231 --> [io.wcm.wcm.ui.clientlibs](../content/io/wcm/io.wcm.wcm/ui/clientlibs/README.md) | 1.4.0 :warning: |
| <!-- 20240728141824 --> [object-size](../content/com/github/marschall/object-size/README.md) | 1.0.0 :warning: |
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
| <!-- 20240312215350 --> [cdevents-sdk-java](../content/dev/cdevents/cdevents-sdk-java/README.md) | 0.3.1 :x: |
| <!-- 20240122143033 --> [org.apache.sling.feature.extension.unpack](../content/org/apache/sling/org.apache.sling.feature.extension.unpack/README.md) | 0.4.0 :warning: |
| <!-- 20240118001405 --> [scimple](../content/org/apache/directory/scimple/README.md) | 1.0.0-M1 :warning: |
| <!-- 20231109041226 --> [org.apache.sling.cms](../content/org/apache/sling/org.apache.sling.cms/README.md) | 1.1.8 :warning: |
| <!-- 20230818102937 --> [microservice-security-autoconfiguration](../content/io/dwpbank/movewp3/microservice-security-autoconfiguration/README.md) | 3.0.2 :warning: [:memo:](https://github.com/movewp3/microservice-security-autoconfiguration/pull/19) |
| <!-- 20230721020416 --> [auto-record](../content/pl/com/labaj/auto-record/README.md) | 2.1.0 :x: |
| <!-- 20230713001648 --> [org.apache.sling.scripting.groovy](../content/org/apache/sling/org.apache.sling.scripting.groovy/README.md) | 1.3.0 :warning: |
| <!-- 20230510171047 --> [Apache-Synapse](../content/org/apache/synapse/README.md) | 3.0.2 :warning: [:memo:](https://issues.apache.org/jira/browse/SYNAPSE-1128) |
| <!-- 20230305132220 --> [jarviz-core](../content/org/kordamp/jarviz/README.md) | 0.3.0 :warning: |
| <!-- 20230215195813 --> [com.io7m.chione](../content/com/io7m/chione/README.md) | 0.0.2 :warning: |
| <!-- 20230204020210 --> [xmlchai](../content/org/jrivard/xmlchai/README.md) | 0.1.3 :warning: |
| <!-- 20221209232334 --> [watset](../content/org/nlpub/watset/README.md) | 2.8.2 :warning: |
| <!-- 20221123032956 --> [org.apache.sling.hc.support](../content/org/apache/sling/org.apache.sling.hc.support/README.md) | 1.0.10 :warning: |
| <!-- 20221107220203 --> [quick-perf-live](../content/org/quickperf/quick-perf-live/README.md) | 0.12 :warning: |
| <!-- 20221021224206 --> [quick-sql-test-data](../content/org/quickperf/quick-sql-test-data/README.md) | 0.1 :warning: |
| <!-- 20220916141422 --> [gemLibPki](../content/de/gematik/pki/gemlibpki-old/README.md) | 0.9.3 :warning: |
| <!-- 20220525193321 --> [jdo](../content/org/apache/jdo/README.md) | 3.2.1 :warning: [:memo:](https://github.com/apache/db-jdo/pull/49) |
| <!-- 20220314110853 --> [org.apache.sling.launchpad.testing](../content/org/apache/sling/org.apache.sling.launchpad.testing/README.md) | 12 :warning: |
| <!-- 20220303223913 --> [apache-any23](../content/org/apache/any23/README.md) | 2.7 :warning: [:memo:](https://github.com/apache/any23/pull/270) |
| <!-- 20220228062841 --> [isis-parent](../content/org/apache/isis/README.md) | 2.0.0-M7 :warning: |
| <!-- 20211212220158 --> [org.apache.sling.commons.messaging.mail](../content/org/apache/sling/org.apache.sling.commons.messaging.mail/README.md) | 2.0.0 :warning: |
| <!-- 20201226140242 --> [maven-artifact-transfer](../content/org/apache/maven/shared/maven-artifact-transfer/README.md) | 0.13.1 :warning: [:memo:](https://github.com/apache/maven-artifact-transfer/commit/c2106c0500cc7c70c27581f117bf86e6185073c6) |
| <!-- 20200511133844 --> [org.apache.sling.installer.factory.packages](../content/org/apache/sling/org.apache.sling.installer.factory.packages/README.md) | 1.0.4 :warning: |
<!-- END GENERATED NEWEST NOT REPRODUCIBLE -->
