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
| <!-- 20260617201536 --> [slingfeature-maven-plugin](../content/org/apache/sling/slingfeature-maven-plugin/README.md) | [1.9.4](../content/org/apache/sling/slingfeature-maven-plugin/slingfeature-maven-plugin-1.9.4.buildspec) :white_check_mark: | [1.9.6](../content/org/apache/sling/slingfeature-maven-plugin/slingfeature-maven-plugin-1.9.6.buildspec) | `bin/add-new-release.sh content/org/apache/sling/slingfeature-maven-plugin/slingfeature-maven-plugin-1.9.4.buildspec 1.9.6` |
| <!-- 20260617151432 --> [jooby](../content/io/jooby/README.md) | [4.5.2](../content/io/jooby/jooby-4.5.2.buildspec) :white_check_mark: | 3.11.9  | `bin/add-new-release.sh content/io/jooby/jooby-4.5.2.buildspec ...` |
| <!-- 20260617133534 --> [commons-logging](../content/org/apache/commons/commons-logging/commons-logging/README.md) | [1.3.6](../content/org/apache/commons/commons-logging/commons-logging/commons-logging-1.3.6.buildspec) :white_check_mark: | [1.4.0](../content/org/apache/commons/commons-logging/commons-logging/commons-logging-1.4.0.buildspec) | `bin/add-new-release.sh content/org/apache/commons/commons-logging/commons-logging/commons-logging-1.3.6.buildspec 1.4.0` |
| <!-- 20260617103643 --> [heylogs-parent](../content/com/github/nbbrd/heylogs/README.md) | [0.18.1](../content/com/github/nbbrd/heylogs/heylogs-0.18.1.buildspec) :white_check_mark: | [0.19.1](../content/com/github/nbbrd/heylogs/heylogs-0.19.1.buildspec) | `bin/add-new-release.sh content/com/github/nbbrd/heylogs/heylogs-0.18.1.buildspec 0.19.1` |
| <!-- 20260617100756 --> [maven-lockfile](../content/io/github/chains-project/maven-lockfile/README.md) | [5.17.0](../content/io/github/chains-project/maven-lockfile/maven-lockfile-5.17.0.buildspec) :white_check_mark: | [5.17.1-beta-1](../content/io/github/chains-project/maven-lockfile/maven-lockfile-5.17.1-beta-1.buildspec) | `bin/add-new-release.sh content/io/github/chains-project/maven-lockfile/maven-lockfile-5.17.0.buildspec 5.17.1-beta-1` |
| <!-- 20260617094740 --> [sasquatch-parent](../content/com/github/nbbrd/sasquatch/README.md) | [1.1.1](../content/com/github/nbbrd/sasquatch/sasquatch-1.1.1.buildspec) :white_check_mark: | [1.1.2](../content/com/github/nbbrd/sasquatch/sasquatch-1.1.2.buildspec) | `bin/add-new-release.sh content/com/github/nbbrd/sasquatch/sasquatch-1.1.1.buildspec 1.1.2` |
| <!-- 20260617084539 --> [beanzooka](../content/com/github/nbbrd/beanzooka/README.md) | [1.5.0](../content/com/github/nbbrd/beanzooka/beanzooka-1.5.0.buildspec) :white_check_mark: | [1.5.1](../content/com/github/nbbrd/beanzooka/beanzooka-1.5.1.buildspec) | `bin/add-new-release.sh content/com/github/nbbrd/beanzooka/beanzooka-1.5.0.buildspec 1.5.1` |
| <!-- 20260616221717 --> [maven-timeline](../content/io/takari/maven/maven-timeline/README.md) | [2.0.4](../content/io/takari/maven/maven-timeline/maven-timeline-2.0.4.buildspec) :white_check_mark: | [2.1.0](../content/io/takari/maven/maven-timeline/maven-timeline-2.1.0.buildspec) | `bin/add-new-release.sh content/io/takari/maven/maven-timeline/maven-timeline-2.0.4.buildspec 2.1.0` |
| <!-- 20260616132923 --> [sdk-parent](../content/com/sap/ai/sdk/README.md) | [1.19.0](../content/com/sap/ai/sdk/sdk-1.19.0.buildspec) :white_check_mark: | [1.20.0](../content/com/sap/ai/sdk/sdk-1.20.0.buildspec) | `bin/add-new-release.sh content/com/sap/ai/sdk/sdk-1.19.0.buildspec 1.20.0` |
| <!-- 20260616100829 --> [langchain4j](../content/dev/langchain4j/README.md) | [1.16.2](../content/dev/langchain4j/langchain4j-1.16.2.buildspec) :white_check_mark: | [1.16.3](../content/dev/langchain4j/langchain4j-1.16.3.buildspec) | `bin/add-new-release.sh content/dev/langchain4j/langchain4j-1.16.2.buildspec 1.16.3` |
| <!-- 20260616100829 --> [langchain4j](../content/dev/langchain4j/README.md) | [1.16.2](../content/dev/langchain4j/langchain4j-1.16.2.buildspec) :white_check_mark: | 1.11.8 1.5.1 1.2.1  | `bin/add-new-release.sh content/dev/langchain4j/langchain4j-1.16.2.buildspec ...` |
| <!-- 20260603135540 --> [byte-buddy-parent](../content/net/bytebuddy/README.md) | [1.18.10-jdk5](../content/net/bytebuddy/byte-buddy-1.18.10-jdk5.buildspec) :white_check_mark: | 1.18.10 1.18.9 1.18.8 1.18.7-jdk5 1.18.6-jdk6-jdk5 1.18.6-jdk5  | `bin/add-new-release.sh content/net/bytebuddy/byte-buddy-1.18.10-jdk5.buildspec ...` |
<!-- END GENERATED ADD OK -->

Apache Release Candidate in Staging https://repository.apache.org
-----------------------------------------------------------------

<!-- BEGIN GENERATED ADD STAGING -->
|    | artifactId | from | to | command |
| -- | ---------- | ---- | -- | ------- |
| <!-- 20260610193222 --> [:mailbox:](https://lists.apache.org/list?dev@sling.apache.org:lte=1M:VOTE) | [org.apache.sling.resourceresolver](../content/org/apache/sling/org.apache.sling.resourceresolver/README.md) | [2.0.2](../content/org/apache/sling/org.apache.sling.resourceresolver/org.apache.sling.resourceresolver-2.0.2.buildspec) :white_check_mark: | [2.0.4](../content/org/apache/sling/org.apache.sling.resourceresolver/org.apache.sling.resourceresolver-2.0.4.buildspec)  | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.resourceresolver/org.apache.sling.resourceresolver-2.0.2.buildspec 2.0.4 staging` |
| <!-- 20260608183945 --> [:mailbox:](https://lists.apache.org/list?dev@pulsar.apache.org:lte=1M:VOTE) | [pulsar](../content/org/apache/pulsar/README.md) | [4.2.2](../content/org/apache/pulsar/pulsar-4.2.2.buildspec) :warning: [:memo:](https://github.com/apache/pulsar/issues/24718) | [5.0.0-M1](../content/org/apache/pulsar/pulsar-5.0.0-M1.buildspec)  | `bin/add-new-release.sh content/org/apache/pulsar/pulsar-4.2.2.buildspec 5.0.0-M1 staging` |
| <!-- 20260602060241 --> [:mailbox:](https://lists.apache.org/list?dev@mina.apache.org:lte=1M:VOTE) | [mina-parent](../content/org/apache/mina/README.md) | [2.2.8](../content/org/apache/mina/mina-2.2.8.buildspec) :white_check_mark: | [2.2.9](../content/org/apache/mina/mina-2.2.9.buildspec)  | `bin/add-new-release.sh content/org/apache/mina/mina-2.2.8.buildspec 2.2.9 staging` |
| <!-- 20260529053627 --> [:mailbox:](https://lists.apache.org/list?dev@struts.apache.org:lte=1M:VOTE) | [struts2-project](../content/org/apache/struts/README.md) | [7.1.1](../content/org/apache/struts/struts2-7.1.1.buildspec) :white_check_mark: | [7.2.1](../content/org/apache/struts/struts2-7.2.1.buildspec)  | `bin/add-new-release.sh content/org/apache/struts/struts2-7.1.1.buildspec 7.2.1 staging` |
| <!-- 20260526131041 --> [:mailbox:](https://lists.apache.org/list?dev@sling.apache.org:lte=1M:VOTE) | [org.apache.sling.commons.log](../content/org/apache/sling/org.apache.sling.commons.log/README.md) | [6.1.0](../content/org/apache/sling/org.apache.sling.commons.log/org.apache.sling.commons.log-6.1.0.buildspec) :white_check_mark: | [6.2.0](../content/org/apache/sling/org.apache.sling.commons.log/org.apache.sling.commons.log-6.2.0.buildspec)  | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.commons.log/org.apache.sling.commons.log-6.1.0.buildspec 6.2.0 staging` |
| <!-- 20260513021215 --> [:mailbox:](https://lists.apache.org/list?dev@paimon.apache.org:lte=1M:VOTE) | [paimon-parent](../content/org/apache/paimon/README.md) | [1.3.1](../content/org/apache/paimon/paimon-parent-1.3.1.buildspec) :warning: [:memo:](https://github.com/apache/paimon/issues/6557) | [1.4.2](../content/org/apache/paimon/paimon-parent-1.4.2.buildspec)  | `bin/add-new-release.sh content/org/apache/paimon/paimon-parent-1.3.1.buildspec 1.4.2 staging` |
| <!-- 20260427075208 --> [:mailbox:](https://lists.apache.org/list?dev@ignite.apache.org:lte=1M:VOTE) | [apache-ignite](../content/org/apache/ignite/README.md) | [2.17.0](../content/org/apache/ignite/ignite-2.17.0.buildspec) :warning: | [3.0.0-alpha5](../content/org/apache/ignite/ignite-3.0.0-alpha5.buildspec)  | `bin/add-new-release.sh content/org/apache/ignite/ignite-2.17.0.buildspec 3.0.0-alpha5 staging` |
| <!-- 20260410173151 --> [:mailbox:](https://lists.apache.org/list?dev@nifi.apache.org:lte=1M:VOTE) | [nifi](../content/org/apache/nifi/nifi/README.md) | [2.8.0](../content/org/apache/nifi/nifi/nifi-2.8.0.buildspec) :warning: | [2.10.0](../content/org/apache/nifi/nifi/nifi-2.10.0.buildspec)  | `bin/add-new-release.sh content/org/apache/nifi/nifi/nifi-2.8.0.buildspec 2.10.0 staging` |
| <!-- 20260209123238 --> [:mailbox:](https://lists.apache.org/list?dev@commons.apache.org:lte=1M:VOTE) | [commons-jexl3](../content/org/apache/commons/commons-jexl3/README.md) | [3.6.2](../content/org/apache/commons/commons-jexl3/commons-jexl3-3.6.2.buildspec) :white_check_mark: | [3.6.3](../content/org/apache/commons/commons-jexl3/commons-jexl3-3.6.3.buildspec)  | `bin/add-new-release.sh content/org/apache/commons/commons-jexl3/commons-jexl3-3.6.2.buildspec 3.6.3 staging` |
| <!-- 20251015201339 --> [:mailbox:](https://lists.apache.org/list?dev@avro.apache.org:lte=1M:VOTE) | [avro-toplevel](../content/org/apache/avro/README.md) | [1.12.1](../content/org/apache/avro/avro-1.12.1.buildspec) :warning: | [1.12.2](../content/org/apache/avro/avro-1.12.2.buildspec)  | `bin/add-new-release.sh content/org/apache/avro/avro-1.12.1.buildspec 1.12.2 staging` |
| <!-- 20250911080143 --> [:mailbox:](https://lists.apache.org/list?dev@amoro.apache.org:lte=1M:VOTE) | [amoro-parent](../content/org/apache/amoro/README.md) | [0.8.1-incubating](../content/org/apache/amoro/amoro-0.8.1-incubating.buildspec) :white_check_mark: | [0.9.0-incubating](../content/org/apache/amoro/amoro-0.9.0-incubating.buildspec)  | `bin/add-new-release.sh content/org/apache/amoro/amoro-0.8.1-incubating.buildspec 0.9.0-incubating staging` |
<!-- END GENERATED ADD STAGING -->

New Release of non-Reproducible Previous
----------------------------------------

<!-- BEGIN GENERATED ADD KO -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20260617175317 --> [quarkus-project](../content/io/quarkus/README.md) | [3.37.0.CR1](../content/io/quarkus/quarkus-3.37.0.CR1.buildspec) :warning: | [3.37.0](../content/io/quarkus/quarkus-3.37.0.buildspec) | `bin/add-new-release.sh content/io/quarkus/quarkus-3.37.0.CR1.buildspec 3.37.0` |
| <!-- 20260617151242 --> [sdmx-dl-parent](../content/com/github/nbbrd/sdmx-dl/README.md) | [3.0.0](../content/com/github/nbbrd/sdmx-dl/sdmx-dl-3.0.0.buildspec) :warning: | [3.1.1](../content/com/github/nbbrd/sdmx-dl/sdmx-dl-3.1.1.buildspec) | `bin/add-new-release.sh content/com/github/nbbrd/sdmx-dl/sdmx-dl-3.0.0.buildspec 3.1.1` |
| <!-- 20260617060527 --> [jline](../content/org/jline/README.md) | [4.1.3](../content/org/jline/jline-4.1.3.buildspec) :warning: [:memo:](https://github.com/jline/jline3/pull/1932) | [4.2.1](../content/org/jline/jline-4.2.1.buildspec) | `bin/add-new-release.sh content/org/jline/jline-4.1.3.buildspec 4.2.1` |
| <!-- 20260615190851 --> [legend-engine](../content/org/finos/legend/engine/README.md) | [4.71.1](../content/org/finos/legend/engine/legend-engine-4.71.1.buildspec) :warning: [:memo:](https://github.com/finos/legend-engine/pull/1337#issuecomment-1508509457) | [4.131.0](../content/org/finos/legend/engine/legend-engine-4.131.0.buildspec) | `bin/add-new-release.sh content/org/finos/legend/engine/legend-engine-4.71.1.buildspec 4.131.0` |
| <!-- 20260615162126 --> [arthas-all](../content/com/taobao/arthas/README.md) | [4.1.0](../content/com/taobao/arthas/arthas-4.1.0.buildspec) :warning: [:memo:](https://github.com/alibaba/arthas/pull/3001) | [4.3.0](../content/com/taobao/arthas/arthas-4.3.0.buildspec) | `bin/add-new-release.sh content/com/taobao/arthas/arthas-4.1.0.buildspec 4.3.0` |
| <!-- 20260615151925 --> [zrlog-base](../content/com/hibegin/zrlog-base/README.md) | [3.3.10](../content/com/hibegin/zrlog-base/zrlog-base-3.3.10.buildspec) :x: | [3.5.5](../content/com/hibegin/zrlog-base/zrlog-base-3.5.5.buildspec) | `bin/add-new-release.sh content/com/hibegin/zrlog-base/zrlog-base-3.3.10.buildspec 3.5.5` |
| <!-- 20260614224917 --> [htmlcompressor](../content/com/github/hazendaz/htmlcompressor/README.md) | [2.4.0](../content/com/github/hazendaz/htmlcompressor/htmlcompressor-2.4.0.buildspec) :warning: | [2.4.1](../content/com/github/hazendaz/htmlcompressor/htmlcompressor-2.4.1.buildspec) | `bin/add-new-release.sh content/com/github/hazendaz/htmlcompressor/htmlcompressor-2.4.0.buildspec 2.4.1` |
| <!-- 20260607152256 --> [glassfish-parent](../content/org/glassfish/main/README.md) | [8.0.3](../content/org/glassfish/main/glassfish-8.0.3.buildspec) :warning: [:memo:](https://github.com/eclipse-ee4j/glassfish/issues/24615#issuecomment-3850537179) | [9.0.0-M2](../content/org/glassfish/main/glassfish-9.0.0-M2.buildspec) | `bin/add-new-release.sh content/org/glassfish/main/glassfish-8.0.3.buildspec 9.0.0-M2` |
| <!-- 20260603202213 --> [jquery-ui](../content/org/webjars/jquery-ui/README.md) | [1.14.2](../content/org/webjars/jquery-ui/jquery-ui-1.14.2.buildspec) :x: | [1.14.2+1](../content/org/webjars/jquery-ui/jquery-ui-1.14.2+1.buildspec) | `bin/add-new-release.sh content/org/webjars/jquery-ui/jquery-ui-1.14.2.buildspec 1.14.2+1` |
| <!-- 20260601135129 --> [openfasttrace](../content/org/itsallcode/openfasttrace/README.md) | [4.2.1](../content/org/itsallcode/openfasttrace/openfasttrace-4.2.1.buildspec) :warning: | [4.5.0](../content/org/itsallcode/openfasttrace/openfasttrace-4.5.0.buildspec) | `bin/add-new-release.sh content/org/itsallcode/openfasttrace/openfasttrace-4.2.1.buildspec 4.5.0` |
| <!-- 20260531180545 --> [com.io7m.certusine](../content/com/io7m/certusine/README.md) | [3.2.0](../content/com/io7m/certusine/com.io7m.certusine-3.2.0.buildspec) :warning: | [4.0.0-beta0004](../content/com/io7m/certusine/com.io7m.certusine-4.0.0-beta0004.buildspec) | `bin/add-new-release.sh content/com/io7m/certusine/com.io7m.certusine-3.2.0.buildspec 4.0.0-beta0004` |
| <!-- 20260526203259 --> [swagger-ui](../content/org/webjars/swagger-ui/README.md) | [5.15.2](../content/org/webjars/swagger-ui/swagger-ui-5.15.2.buildspec) :x: | [5.32.6](../content/org/webjars/swagger-ui/swagger-ui-5.32.6.buildspec) | `bin/add-new-release.sh content/org/webjars/swagger-ui/swagger-ui-5.15.2.buildspec 5.32.6` |
| <!-- 20260526105511 --> [tika](../content/org/apache/tika/README.md) | [3.3.0](../content/org/apache/tika/tika-3.3.0.buildspec) :warning: [:memo:](https://issues.apache.org/jira/browse/TIKA-4470) | [4.0.0-alpha-1](../content/org/apache/tika/tika-4.0.0-alpha-1.buildspec) | `bin/add-new-release.sh content/org/apache/tika/tika-3.3.0.buildspec 4.0.0-alpha-1` |
| <!-- 20260523130339 --> [plotsquared-bukkit](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/README.md) | [7.5.4](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.4.buildspec) :x: | [7.5.13](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.13.buildspec) | `bin/add-new-release.sh content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.4.buildspec 7.5.13` |
| <!-- 20260520231636 --> [opentelemetry-instrumentation-api](../content/io/opentelemetry/instrumentation/README.md) | [2.25.0](../content/io/opentelemetry/instrumentation/opentelemetry-2.25.0.buildspec) :x: | [2.28.1](../content/io/opentelemetry/instrumentation/opentelemetry-2.28.1.buildspec) | `bin/add-new-release.sh content/io/opentelemetry/instrumentation/opentelemetry-2.25.0.buildspec 2.28.1` |
| <!-- 20260513021215 --> [paimon-parent](../content/org/apache/paimon/README.md) | [1.3.1](../content/org/apache/paimon/paimon-parent-1.3.1.buildspec) :warning: [:memo:](https://github.com/apache/paimon/issues/6557) | [1.4.1](../content/org/apache/paimon/paimon-parent-1.4.1.buildspec) | `bin/add-new-release.sh content/org/apache/paimon/paimon-parent-1.3.1.buildspec 1.4.1` |
| <!-- 20260512170515 --> [com.io7m.primogenitor](../content/com/io7m/primogenitor/README.md) | [9.2.0](../content/com/io7m/primogenitor/com.io7m.primogenitor-9.2.0.buildspec) :warning: | [10.0.0-beta0001](../content/com/io7m/primogenitor/com.io7m.primogenitor-10.0.0-beta0001.buildspec) | `bin/add-new-release.sh content/com/io7m/primogenitor/com.io7m.primogenitor-9.2.0.buildspec 10.0.0-beta0001` |
| <!-- 20260512011206 --> [trino-root](../content/io/trino/README.md) | [477](../content/io/trino/trino-477.buildspec) :warning: | [481](../content/io/trino/trino-481.buildspec) | `bin/add-new-release.sh content/io/trino/trino-477.buildspec 481` |
| <!-- 20260505165323 --> [acs-aem-commons](../content/com/adobe/acs/aem-commons/README.md) | [6.16.0](../content/com/adobe/acs/aem-commons/acs-aem-commons-6.16.0.buildspec) :warning: | [6.17.2](../content/com/adobe/acs/aem-commons/acs-aem-commons-6.17.2.buildspec) | `bin/add-new-release.sh content/com/adobe/acs/aem-commons/acs-aem-commons-6.16.0.buildspec 6.17.2` |
| <!-- 20260502092809 --> [project](../content/org/glassfish/mq/README.md) | [6.8.0](../content/org/glassfish/mq/openmq-6.8.0.buildspec) :warning: | [6.9.0](../content/org/glassfish/mq/openmq-6.9.0.buildspec) | `bin/add-new-release.sh content/org/glassfish/mq/openmq-6.8.0.buildspec 6.9.0` |
| <!-- 20260501183711 --> [com.io7m.jbssio](../content/com/io7m/jbssio/README.md) | [3.0.0](../content/com/io7m/jbssio/com.io7m.jbssio-3.0.0.buildspec) :warning: | [4.0.0](../content/com/io7m/jbssio/com.io7m.jbssio-4.0.0.buildspec) | `bin/add-new-release.sh content/com/io7m/jbssio/com.io7m.jbssio-3.0.0.buildspec 4.0.0` |
| <!-- 20260427075208 --> [apache-ignite](../content/org/apache/ignite/README.md) | [2.17.0](../content/org/apache/ignite/ignite-2.17.0.buildspec) :warning: | [2.18.0](../content/org/apache/ignite/ignite-2.18.0.buildspec) | `bin/add-new-release.sh content/org/apache/ignite/ignite-2.17.0.buildspec 2.18.0` |
| <!-- 20260425140851 --> [com.io7m.quarrel](../content/com/io7m/quarrel/README.md) | [1.8.0](../content/com/io7m/quarrel/com.io7m.quarrel-1.8.0.buildspec) :warning: | [1.8.1](../content/com/io7m/quarrel/com.io7m.quarrel-1.8.1.buildspec) | `bin/add-new-release.sh content/com/io7m/quarrel/com.io7m.quarrel-1.8.0.buildspec 1.8.1` |
| <!-- 20260425105350 --> [camel](../content/org/apache/camel/camel/README.md) | [4.10.0](../content/org/apache/camel/camel/camel-4.10.0.buildspec) :x: | [4.20.0](../content/org/apache/camel/camel/camel-4.20.0.buildspec) | `bin/add-new-release.sh content/org/apache/camel/camel/camel-4.10.0.buildspec 4.20.0` |
| <!-- 20260417195940 --> [com.io7m.xstructural](../content/com/io7m/xstructural/README.md) | [2.0.1](../content/com/io7m/xstructural/com.io7m.xstructural-2.0.1.buildspec) :warning: | [2.1.0](../content/com/io7m/xstructural/com.io7m.xstructural-2.1.0.buildspec) | `bin/add-new-release.sh content/com/io7m/xstructural/com.io7m.xstructural-2.0.1.buildspec 2.1.0` |
| <!-- 20260410173151 --> [nifi](../content/org/apache/nifi/nifi/README.md) | [2.8.0](../content/org/apache/nifi/nifi/nifi-2.8.0.buildspec) :warning: | [2.9.0](../content/org/apache/nifi/nifi/nifi-2.9.0.buildspec) | `bin/add-new-release.sh content/org/apache/nifi/nifi/nifi-2.8.0.buildspec 2.9.0` |
| <!-- 20260403090725 --> [git-commit-id-maven-plugin](../content/io/github/git-commit-id/README.md) | [9.0.0](../content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec) :x: | [10.0.0](../content/io/github/git-commit-id/git-commit-id-maven-plugin-10.0.0.buildspec) | `bin/add-new-release.sh content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec 10.0.0` |
| <!-- 20260326141808 --> [efx-toolkit-java](../content/eu/europa/ted/eforms/efx-toolkit-java/README.md) | [2.0.0-alpha.5](../content/eu/europa/ted/eforms/efx-toolkit-java/efx-toolkit-java-2.0.0-alpha.5.buildspec) :warning: | [2.0.0-alpha.6](../content/eu/europa/ted/eforms/efx-toolkit-java/efx-toolkit-java-2.0.0-alpha.6.buildspec) | `bin/add-new-release.sh content/eu/europa/ted/eforms/efx-toolkit-java/efx-toolkit-java-2.0.0-alpha.5.buildspec 2.0.0-alpha.6` |
| <!-- 20260317154519 --> [logback-parent-db](../content/ch/qos/logback/db/README.md) | [1.2.11](../content/ch/qos/logback/db/logback-db-1.2.11.buildspec) :warning: [:memo:](https://github.com/qos-ch/logback-db/pull/2) | [1.5.32](../content/ch/qos/logback/db/logback-db-1.5.32.buildspec) | `bin/add-new-release.sh content/ch/qos/logback/db/logback-db-1.2.11.buildspec 1.5.32` |
| <!-- 20260130221056 --> [parent](../content/org/apache/sis/README.md) | [1.3](../content/org/apache/sis/parent-1.3.buildspec) :warning: [:memo:](https://github.com/apache/sis/pull/36) | [1.6](../content/org/apache/sis/parent-1.6.buildspec) | `bin/add-new-release.sh content/org/apache/sis/parent-1.3.buildspec 1.6` |
| <!-- 20251215100318 --> [paapi5-java-sdk](../content/net/osslabz/paapi5-java-sdk/README.md) | [1.2.4](../content/net/osslabz/paapi5-java-sdk/paapi5-java-sdk-1.2.4.buildspec) :warning: | [1.2.5](../content/net/osslabz/paapi5-java-sdk/paapi5-java-sdk-1.2.5.buildspec) | `bin/add-new-release.sh content/net/osslabz/paapi5-java-sdk/paapi5-java-sdk-1.2.4.buildspec 1.2.5` |
| <!-- 20251124114125 --> [io.wcm.wcm.ui.granite](../content/io/wcm/io.wcm.wcm/ui/granite/README.md) | [1.9.12](../content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.9.12.buildspec) :warning: | [1.11.10](../content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.11.10.buildspec) | `bin/add-new-release.sh content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.9.12.buildspec 1.11.10` |
| <!-- 20251022112208 --> [flexmonster](../content/org/webjars/flexmonster/README.md) | [2.9.107](../content/org/webjars/flexmonster/flexmonster-2.9.107.buildspec) :x: | [2.9.114-1](../content/org/webjars/flexmonster/flexmonster-2.9.114-1.buildspec) | `bin/add-new-release.sh content/org/webjars/flexmonster/flexmonster-2.9.107.buildspec 2.9.114-1` |
<!-- END GENERATED ADD KO -->

### Newest not Reproducible

or maybe Reproducible but we were not able to reproduce...

<!-- BEGIN GENERATED NEWEST NOT REPRODUCIBLE -->
| artifactId | newest |
| ---------- | ------ |
| <!-- 20260617081335 --> [shiro-root](../content/org/apache/shiro/README.md) | 3.0.0-alpha-1 :warning: |
| <!-- 20260614192912 --> [avaje-metrics-parent](../content/io/avaje/metrics/README.md) | 9.16-RC9 :warning: |
| <!-- 20260614131402 --> [jpmml-sklearn](../content/org/jpmml/jpmml-sklearn/README.md) | 1.9.38 :warning: |
| <!-- 20260611193114 --> [hibernate-models](../content/org/hibernate/models/hibernate-models/README.md) | 1.2.0 :warning: |
| <!-- 20260611192538 --> [commons-daemon](../content/org/apache/commons/commons-daemon/README.md) | 1.6.1 :warning: |
| <!-- 20260609214727 --> [spotbugs-maven-plugin](../content/com/github/spotbugs/spotbugs-maven-plugin/README.md) | 4.10.2.0 :warning: [:memo:](https://github.com/spotbugs/spotbugs-maven-plugin/issues/1148) |
| <!-- 20260609092927 --> [jpmml-sparkml](../content/org/jpmml/jpmml-sparkml/README.md) | 3.3.4 :warning: |
| <!-- 20260608183945 --> [pulsar](../content/org/apache/pulsar/README.md) | 4.2.2 :warning: [:memo:](https://github.com/apache/pulsar/issues/24718) |
| <!-- 20260608110523 --> [jandex-parent](../content/io/smallrye/jandex/README.md) | 3.6.0 :warning: |
| <!-- 20260608105512 --> [jakartaee-api-parent](../content/org/apache/tomee/jakartaee-api/README.md) | 11.0.0-M1 :warning: |
| <!-- 20260605030317 --> [dbunit](../content/org/dbunit/README.md) | 3.2.0 :warning: |
| <!-- 20260602174153 --> [org.apache.sling.feature.launcher](../content/org/apache/sling/org.apache.sling.feature.launcher/README.md) | 1.3.6 :warning: |
| <!-- 20260529043339 --> [tycho](../content/org/eclipse/tycho/README.md) | 5.0.3 :warning: |
| <!-- 20260528130924 --> [toolbox](../content/eu/maveniverse/maven/toolbox/README.md) | 0.15.14 :warning: |
| <!-- 20260526092935 --> [flink-kubernetes-operator-parent](../content/org/apache/flink/flink-kubernetes-operator/README.md) | 1.15.0 :warning: |
| <!-- 20260526075016 --> [bitcoin-commons](../content/net/osslabz/bitcoin-commons/README.md) | 0.3.0 :warning: |
| <!-- 20260526062915 --> [json-rpc-client](../content/net/osslabz/json-rpc-client/README.md) | 0.0.7 :warning: [:memo:](https://github.com/osslabz/json-rpc-client/pull/47) |
| <!-- 20260525190715 --> [jpmml-xgboost](../content/org/jpmml/jpmml-xgboost/README.md) | 1.9.8 :warning: |
| <!-- 20260525121922 --> [syncope](../content/org/apache/syncope/README.md) | 4.1.1 :warning: |
| <!-- 20260519211516 --> [plexus-classworlds](../content/org/codehaus/plexus/plexus-classworlds/README.md) | 2.12.0 :warning: |
| <!-- 20260518091538 --> [maven-resolver](../content/org/apache/maven/resolver/maven-resolver/README.md) | 2.0.18 :warning: |
| <!-- 20260512184128 --> [slf4j-parent](../content/org/slf4j/README.md) | 2.1.0-alpha1 :warning: |
| <!-- 20260512181318 --> [clojure](../content/org/clojure/README.md) | 1.12.5 :warning: |
| <!-- 20260512110215 --> [kubernetes-client-project](../content/io/fabric8/kubernetes-client/README.md) | 7.7.0 :warning: |
| <!-- 20260510210527 --> [yupiik-tools-maven-plugin-parent](../content/io/yupiik/maven/plugin/README.md) | 1.2.14 :warning: |
| <!-- 20260509222314 --> [johnzon](../content/org/apache/johnzon/README.md) | 2.1.0 :x: |
| <!-- 20260509153514 --> [com.io7m.jade](../content/com/io7m/jade/README.md) | 1.1.0 :warning: |
| <!-- 20260509133319 --> [com.io7m.medrina](../content/com/io7m/medrina/README.md) | 1.1.0 :warning: |
| <!-- 20260508145202 --> [parent](../content/org/phoebus/README.md) | 5.0.5 :warning: |
| <!-- 20260503153112 --> [com.io7m.wendover](../content/com/io7m/wendover/README.md) | 1.1.1 :warning: |
| <!-- 20260503111321 --> [dependency-check-parent](../content/org/owasp/dependency-check/README.md) | 12.2.2 :warning: |
| <!-- 20260430195444 --> [karaf](../content/org/apache/karaf/karaf/README.md) | 4.4.11 :warning: [:memo:](https://issues.apache.org/jira/browse/KARAF-7797) |
| <!-- 20260430165307 --> [jreleaser](../content/org/jreleaser/README.md) | 1.24.0 :warning: |
| <!-- 20260428135328 --> [io.wcm.caconfig.editor.root](../content/io/wcm/io.wcm.caconfig/README.md) | 1.17.0 :warning: |
| <!-- 20260427115930 --> [jpmml-statsmodels](../content/org/jpmml/jpmml-statsmodels/README.md) | 1.3.13 :warning: |
| <!-- 20260427111138 --> [jpmml-python](../content/org/jpmml/jpmml-python/README.md) | 1.3.20 :warning: |
| <!-- 20260427102741 --> [jpmml-h2o](../content/org/jpmml/jpmml-h2o/README.md) | 1.3.6 :warning: |
| <!-- 20260426190913 --> [jpmml-lightgbm](../content/org/jpmml/jpmml-lightgbm/README.md) | 1.6.6 :warning: |
| <!-- 20260425195712 --> [jpmml-converter](../content/org/jpmml/jpmml-converter/README.md) | 1.6.10 :warning: |
| <!-- 20260425180713 --> [com.io7m.calino](../content/com/io7m/calino/README.md) | 1.0.0 :warning: |
| <!-- 20260420152020 --> [jakarta.activation-api](../content/jakarta/activation/jakarta.activation-api/README.md) | 2.2.0-M2 :warning: |
| <!-- 20260415100521 --> [eforms-sdk](../content/eu/europa/ted/eforms/eforms-sdk/README.md) | 2.0.0-alpha.2 :warning: |
| <!-- 20260410112238 --> [jackrabbit-parent](../content/org/apache/jackrabbit/jackrabbit/README.md) | 2.23.4-beta :warning: |
| <!-- 20260409182607 --> [lz4-java](../content/at/yawk/lz4/lz4-java/README.md) | 1.11.0 :warning: |
| <!-- 20260408223853 --> [jspwiki-builder](../content/org/apache/jspwiki/README.md) | 2.12.4 :warning: |
| <!-- 20260408152748 --> [mybatis-generator](../content/org/mybatis/generator/README.md) | 2.0.0 :warning: |
| <!-- 20260408101124 --> [jdplus-incubator](../content/eu/europa/ec/joinup/sat/jdplus-incubator/README.md) | 2.4.1 :warning: |
| <!-- 20260404032907 --> [ratis](../content/org/apache/ratis/README.md) | 3.2.2 :warning: |
| <!-- 20260326135347 --> [eforms-core-java](../content/eu/europa/ted/eforms/eforms-core-java/README.md) | 1.6.0 :warning: |
| <!-- 20260323120711 --> [fediz](../content/org/apache/cxf/fediz/README.md) | 1.7.2 :warning: |
| <!-- 20260320142559 --> [apache-rat-project](../content/org/apache/rat/README.md) | 0.18 :warning: [:memo:](https://issues.apache.org/jira/browse/RAT-536) |
| <!-- 20260318202349 --> [commons-net](../content/org/apache/commons/net/README.md) | 3.13.0 :warning: |
| <!-- 20260311211200 --> [mockito-core](../content/org/mockito/mockito-core/README.md) | 5.23.0 :warning: |
| <!-- 20260309133844 --> [org.apache.sling.starter](../content/org/apache/sling/org.apache.sling.starter/README.md) | 14 :warning: |
| <!-- 20260307162319 --> [bundlebee](../content/io/yupiik/bundlebee/README.md) | 1.0.32 :warning: |
| <!-- 20260306103720 --> [jdplus-main](../content/eu/europa/ec/joinup/sat/jdplus-main/README.md) | 3.7.1 :warning: |
| <!-- 20260305212234 --> [zookeeper](../content/org/apache/zookeeper/README.md) | 3.9.5 :warning: |
| <!-- 20260302154005 --> [orc](../content/org/apache/orc/README.md) | 2.3.0 :warning: |
| <!-- 20260228122655 --> [org.apache.sling.models.impl](../content/org/apache/sling/org.apache.sling.models.impl/README.md) | 2.0.2 :warning: |
| <!-- 20260223090309 --> [org.apache.sling.pipes](../content/org/apache/sling/org.apache.sling.pipes/README.md) | 4.5.2 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-pipes/pull/20) |
| <!-- 20260217140648 --> [jdplus-sdmx](../content/com/github/nbbrd/jdplus-sdmx/README.md) | 3.3.4 :warning: [:memo:](https://github.com/apache/netbeans-mavenutils-nbm-maven-plugin/issues/133) |
| <!-- 20260207133315 --> [com.io7m.ervilla](../content/com/io7m/ervilla/README.md) | 1.1.0 :warning: |
| <!-- 20260205185517 --> [jpmml-codemodel](../content/org/jpmml/jpmml-codemodel/README.md) | 1.2.2 :warning: |
| <!-- 20260205180917 --> [jpmml-r](../content/org/jpmml/jpmml-r/README.md) | 1.7.9 :warning: |
| <!-- 20260204095522 --> [jpmml-transpiler](../content/org/jpmml/jpmml-transpiler/README.md) | 1.5.1 :warning: |
| <!-- 20260201120712 --> [jpmml-evaluator](../content/org/jpmml/jpmml-evaluator/README.md) | 1.7.7 :warning: |
| <!-- 20260131133916 --> [jpmml-model](../content/org/jpmml/jpmml-model/README.md) | 1.7.7 :warning: [:memo:](https://github.com/jpmml/jpmml-model/issues/42) |
| <!-- 20260123003519 --> [teamcity-formatter](../content/io/cucumber/teamcity-formatter/README.md) | 0.3.0 :warning: |
| <!-- 20260122021714 --> [usage-formatter](../content/io/cucumber/usage-formatter/README.md) | 0.2.0 :warning: |
| <!-- 20260118212315 --> [xml-maven-plugin](../content/org/codehaus/mojo/xml-maven-plugin/README.md) | 1.2.1 :warning: [:memo:](https://github.com/mojohaus/xml-maven-plugin/issues/155) |
| <!-- 20260113132719 --> [klass](../content/cool/klass/README.md) | 0.6.0 :warning: [:memo:](https://github.com/liftwizard/klass/issues/608) |
| <!-- 20260110100713 --> [unexepack](../content/io/github/albertus82/unexepack/README.md) | 1.0.0 :warning: |
| <!-- 20260108121527 --> [com.io7m.verona](../content/com/io7m/verona/README.md) | 1.1.0 :warning: |
| <!-- 20260106215513 --> [commons-pool2](../content/org/apache/commons/commons-pool2/README.md) | 2.13.1 :warning: |
| <!-- 20260104100712 --> [com.io7m.seltzer](../content/com/io7m/seltzer/README.md) | 1.3.0 :warning: |
| <!-- 20251230192514 --> [test.check](../content/org/clojure/test.check/README.md) | 1.1.3 :warning: |
| <!-- 20251229095723 --> [evm-abi-decoder](../content/net/osslabz/evm-abi-decode/README.md) | 0.1.6 :warning: |
| <!-- 20251228170116 --> [mybatis-spring-boot](../content/org/mybatis/spring/boot/README.md) | 4.0.1 :warning: |
| <!-- 20251222125523 --> [com.io7m.jsamplebuffer](../content/com/io7m/jsamplebuffer/README.md) | 1.0.1 :warning: |
| <!-- 20251221210113 --> [credentialmanager](../content/com/github/philippheuer/credentialmanager/README.md) | 0.4.0 :warning: |
| <!-- 20251218112519 --> [jdplus-benchmarking](../content/eu/europa/ec/joinup/sat/jdplus-benchmarking/README.md) | 2.1.0 :warning: |
| <!-- 20251210184449 --> [jmeter-java-dsl-parent](../content/us/abstracta/jmeter/jmeter-java-dsl/README.md) | 2.2 :warning: |
| <!-- 20251210155324 --> [com.io7m.dixmont](../content/com/io7m/dixmont/README.md) | 3.1.0 :warning: |
| <!-- 20251207221548 --> [commons-text](../content/org/apache/commons/commons-text/README.md) | 1.15.0 :warning: |
| <!-- 20251130174727 --> [com.io7m.looseleaf](../content/com/io7m/looseleaf/README.md) | 4.0.0 :warning: |
| <!-- 20251128133200 --> [hugegraph](../content/org/apache/hugegraph/README.md) | 1.7.0 :warning: |
| <!-- 20251128083720 --> [eforms-sdk-analyzer](../content/eu/europa/ted/eforms/eforms-sdk-analyzer/README.md) | 1.14.0 :warning: |
| <!-- 20251126094339 --> [dubbo](../content/org/apache/dubbo/README.md) | 3.3.6 :warning: |
| <!-- 20251123193609 --> [hive](../content/org/apache/hive/README.md) | 4.2.0 :warning: [:memo:](https://issues.apache.org/jira/browse/HIVE-28186) |
| <!-- 20251119204747 --> [gwt-commons-validator](../content/de/knightsoft-net/gwt-commons-validator/README.md) | 1.10.1-0 :warning: |
| <!-- 20251030133124 --> [jdbc-url-parser](../content/net/osslabz/jdbc-url-parser/README.md) | 0.1.1 :warning: |
| <!-- 20251029202934 --> [turnstile-siteverify-client](../content/net/osslabz/turnstile-siteverify-client/README.md) | 0.4.1 :warning: |
| <!-- 20251024120236 --> [com.io7m.cardant](../content/com/io7m/cardant/README.md) | 1.0.0-beta0002 :x: |
| <!-- 20251015201339 --> [avro-toplevel](../content/org/apache/avro/README.md) | 1.12.1 :warning: |
| <!-- 20250923122249 --> [jaxb-parent](../content/org/glassfish/jaxb/README.md) | 4.0.6 :warning: |
| <!-- 20250919111500 --> [jakarta.mail-api](../content/jakarta/mail/jakarta.mail-api/README.md) | 2.2.0-M1 :warning: |
| <!-- 20250912154637 --> [cellar](../content/org/apache/karaf/cellar/README.md) | 4.4.8 :warning: [:memo:](https://github.com/apache/karaf-cellar/pull/153) |
| <!-- 20250911141308 --> [angus-activation-project](../content/org/eclipse/angus/activation/README.md) | 2.1.0-M1 :warning: |
| <!-- 20250829092417 --> [plc4x-parent](../content/org/apache/plc4x/plc4x/README.md) | 0.13.1 :warning: [:memo:](https://github.com/apache/plc4x/pull/2407) |
| <!-- 20250707085541 --> [java-sql-parent](../content/com/github/nbbrd/java-sql-util/README.md) | 1.0.7 :warning: |
| <!-- 20250702142639 --> [rainbowgum-maven-parent](../content/io/jstach/rainbowgum/README.md) | 0.8.2 :warning: |
| <!-- 20250628075449 --> [drill-root](../content/org/apache/drill/README.md) | 1.22.0 :warning: |
| <!-- 20250603145335 --> [io.takari.incrementalbuild](../content/io/takari/incrementalbuild/README.md) | 1.0.4 :warning: |
| <!-- 20250522194000 --> [com.io7m.gtyrell](../content/com/io7m/gtyrell/README.md) | 4.0.1 :warning: |
| <!-- 20250519085748 --> [org.apache.sling.feature.cpconverter](../content/org/apache/sling/org.apache.sling.feature.cpconverter/README.md) | 1.3.10 :warning: |
| <!-- 20250519063835 --> [org.apache.sling.distribution.core](../content/org/apache/sling/org.apache.sling.distribution.core/README.md) | 0.7.4 :warning: |
| <!-- 20250508083646 --> [org.apache.sling.scripting.sightly.testing](../content/org/apache/sling/org.apache.sling.scripting.sightly.testing/README.md) | 1.0.40-1.4.0 :warning: |
| <!-- 20250507175507 --> [com.io7m.mime2045](../content/com/io7m/mime2045/README.md) | 1.2.0 :warning: |
| <!-- 20250503162925 --> [com.io7m.trasco](../content/com/io7m/trasco/README.md) | 3.1.1 :warning: |
| <!-- 20250422082642 --> [crypto-commons](../content/net/osslabz/crypto-commons/README.md) | 0.6.4 :warning: [:memo:](https://github.com/osslabz/crypto-commons/pull/54) |
| <!-- 20250418115815 --> [systemds](../content/org/apache/systemds/README.md) | 3.3.0 :warning: [:memo:](https://github.com/apache/systemds/pull/2257) |
| <!-- 20250403121924 --> [winrm-java](../content/org/metricshub/winrm-java/README.md) | 1.1.02 :warning: |
| <!-- 20250331033615 --> [aspectj-maven-plugin](../content/dev/aspectj/aspectj-maven-plugin/README.md) | 1.14.1 :warning: |
| <!-- 20250325094930 --> [camel-k-runtime-project](../content/org/apache/camel/camel-k-runtime/README.md) | 3.15.3 :warning: |
| <!-- 20250323131510 --> [packager-maven-plugin](../content/org/jpmml/packager-maven-plugin/README.md) | 1.1.0 :warning: |
| <!-- 20250226101218 --> [baremaps](../content/org/apache/baremaps/README.md) | 0.8.2 :warning: [:memo:](https://github.com/apache/incubator-baremaps/pull/951) |
| <!-- 20250217124403 --> [winrm](../content/org/sentrysoftware/winrm/README.md) | 1.1.01 :warning: |
| <!-- 20250214132638 --> [commons-vfs2](../content/org/apache/commons/commons-vfs2/README.md) | 2.10.0 :warning: |
| <!-- 20250203233329 --> [axiom](../content/org/apache/ws/commons/axiom/README.md) | 2.0.0 :warning: |
| <!-- 20250201215052 --> [ftpserver-parent](../content/org/apache/mina/ftpserver/README.md) | 1.2.1 :warning: |
| <!-- 20250103195806 --> [ldapchai](../content/com/github/ldapchai/README.md) | 0.8.7 :warning: |
| <!-- 20241215170740 --> [reload4j](../content/ch/qos/reload4j/README.md) | 1.2.26 :warning: |
| <!-- 20241207223709 --> [royale-typedefs-parent](../content/org/apache/royale/typedefs/README.md) | 0.9.12 :warning: |
| <!-- 20241207223516 --> [royale-framework-parent](../content/org/apache/royale/framework/README.md) | 0.9.12 :warning: |
| <!-- 20241207221427 --> [compiler](../content/org/apache/royale/compiler/README.md) | 0.9.12 :warning: |
| <!-- 20241112125327 --> [coingecko-java](../content/net/osslabz/coingecko-java/README.md) | 1.2.0 :warning: |
| <!-- 20241106160454 --> [tomcat-authnz-spnego-ad](../content/net/sf/michael-o/tomcat/tomcat-authnz-spnego-ad/README.md) | 4.2.4 :warning: [:memo:](https://github.com/michael-o/tomcatspnegoad/issues/32) |
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
| <!-- 20230607120456 --> [lnd-rest-client](../content/net/osslabz/lnd-rest-client/README.md) | 1.0.1 :warning: |
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
| <!-- 20211221090833 --> [scriptingbundle-maven-plugin](../content/org/apache/sling/scriptingbundle-maven-plugin/README.md) | 0.5.2 :warning: |
| <!-- 20211212220158 --> [org.apache.sling.commons.messaging.mail](../content/org/apache/sling/org.apache.sling.commons.messaging.mail/README.md) | 2.0.0 :warning: |
| <!-- 20201226140242 --> [maven-artifact-transfer](../content/org/apache/maven/shared/maven-artifact-transfer/README.md) | 0.13.1 :warning: [:memo:](https://github.com/apache/maven-artifact-transfer/commit/c2106c0500cc7c70c27581f117bf86e6185073c6) |
| <!-- 20200511133844 --> [org.apache.sling.installer.factory.packages](../content/org/apache/sling/org.apache.sling.installer.factory.packages/README.md) | 1.0.4 :warning: |
<!-- END GENERATED NEWEST NOT REPRODUCIBLE -->
