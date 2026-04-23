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
      content/eu/europa/ted/eforms/eforms-sdk/eforms-sdk-2.0.0-alpha.2.buildspec
<!-- END GENERATED MISSING DIFFOSCOPE -->


New Release of Previously Reproducible
--------------------------------------

<!-- BEGIN GENERATED ADD OK -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20260423191312 --> [gson-parent](../content/com/google/code/gson/README.md) | [2.13.2](../content/com/google/code/gson/gson-2.13.2.buildspec) :white_check_mark: | [2.14.0](../content/com/google/code/gson/gson-2.14.0.buildspec) | `bin/add-new-release.sh content/com/google/code/gson/gson-2.13.2.buildspec 2.14.0` |
| <!-- 20260423190513 --> [org.apache.sling.installer.core](../content/org/apache/sling/org.apache.sling.installer.core/README.md) | [3.14.4](../content/org/apache/sling/org.apache.sling.installer.core/org.apache.sling.installer.core-3.14.4.buildspec) :white_check_mark: | [3.14.6](../content/org/apache/sling/org.apache.sling.installer.core/org.apache.sling.installer.core-3.14.6.buildspec) | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.installer.core/org.apache.sling.installer.core-3.14.4.buildspec 3.14.6` |
| <!-- 20260423154444 --> [activemq-parent](../content/org/apache/activemq/README.md) | [6.2.4](../content/org/apache/activemq/activemq-6.2.4.buildspec) :white_check_mark: | [6.2.5](../content/org/apache/activemq/activemq-6.2.5.buildspec) | `bin/add-new-release.sh content/org/apache/activemq/activemq-6.2.4.buildspec 6.2.5` |
| <!-- 20260423154444 --> [activemq-parent](../content/org/apache/activemq/README.md) | [6.2.4](../content/org/apache/activemq/activemq-6.2.4.buildspec) :white_check_mark: | 5.19.6 5.19.5  | `bin/add-new-release.sh content/org/apache/activemq/activemq-6.2.4.buildspec ...` |
| <!-- 20260423132519 --> [liquibase-percona](../content/org/liquibase/ext/liquibase-percona/README.md) | [5.0.1](../content/org/liquibase/ext/liquibase-percona/liquibase-percona-5.0.1.buildspec) :white_check_mark: | [5.0.2](../content/org/liquibase/ext/liquibase-percona/liquibase-percona-5.0.2.buildspec) | `bin/add-new-release.sh content/org/liquibase/ext/liquibase-percona/liquibase-percona-5.0.1.buildspec 5.0.2` |
| <!-- 20260423102244 --> [commons-io](../content/org/apache/commons/commons-io/README.md) | [2.21.0](../content/org/apache/commons/commons-io/commons-io-2.21.0.buildspec) :white_check_mark: | [2.22.0](../content/org/apache/commons/commons-io/commons-io-2.22.0.buildspec) | `bin/add-new-release.sh content/org/apache/commons/commons-io/commons-io-2.21.0.buildspec 2.22.0` |
| <!-- 20260423083719 --> [spreadsheet-parent](../content/com/github/nbbrd/spreadsheet4j/README.md) | [2.5.10](../content/com/github/nbbrd/spreadsheet4j/spreadsheet-2.5.10.buildspec) :white_check_mark: | [2.6.0](../content/com/github/nbbrd/spreadsheet4j/spreadsheet-2.6.0.buildspec) | `bin/add-new-release.sh content/com/github/nbbrd/spreadsheet4j/spreadsheet-2.5.10.buildspec 2.6.0` |
| <!-- 20260422201548 --> [avaje-jsonb-parent](../content/io/avaje/jsonb/README.md) | [3.13-RC1](../content/io/avaje/jsonb/avaje-jsonb-3.13-RC1.buildspec) :white_check_mark: | [3.13](../content/io/avaje/jsonb/avaje-jsonb-3.13.buildspec) | `bin/add-new-release.sh content/io/avaje/jsonb/avaje-jsonb-3.13-RC1.buildspec 3.13` |
| <!-- 20260422123717 --> [units-catalog](../content/com/cognite/units/units-catalog/README.md) | [0.1.24](../content/com/cognite/units/units-catalog/units-catalog-0.1.24.buildspec) :white_check_mark: | [0.1.26](../content/com/cognite/units/units-catalog/units-catalog-0.1.26.buildspec) | `bin/add-new-release.sh content/com/cognite/units/units-catalog/units-catalog-0.1.24.buildspec 0.1.26` |
| <!-- 20260422123717 --> [units-catalog](../content/com/cognite/units/units-catalog/README.md) | [0.1.24](../content/com/cognite/units/units-catalog/units-catalog-0.1.24.buildspec) :white_check_mark: | 0.1.25  | `bin/add-new-release.sh content/com/cognite/units/units-catalog/units-catalog-0.1.24.buildspec ...` |
| <!-- 20260421074543 --> [nbbrd-maven-tools](../content/com/github/nbbrd/nbbrd-maven-tools/README.md) | [1.1.1](../content/com/github/nbbrd/nbbrd-maven-tools/nbbrd-maven-tools-1.1.1.buildspec) :white_check_mark: | [1.2.0](../content/com/github/nbbrd/nbbrd-maven-tools/nbbrd-maven-tools-1.2.0.buildspec) | `bin/add-new-release.sh content/com/github/nbbrd/nbbrd-maven-tools/nbbrd-maven-tools-1.1.1.buildspec 1.2.0` |
| <!-- 20260420210356 --> [avaje-http-parent](../content/io/avaje/http/README.md) | [3.8](../content/io/avaje/http/avaje-http-3.8.buildspec) :white_check_mark: | [3.9-RC2](../content/io/avaje/http/avaje-http-3.9-RC2.buildspec) | `bin/add-new-release.sh content/io/avaje/http/avaje-http-3.8.buildspec 3.9-RC2` |
| <!-- 20260420210356 --> [avaje-http-parent](../content/io/avaje/http/README.md) | [3.8](../content/io/avaje/http/avaje-http-3.8.buildspec) :white_check_mark: | 3.9-RC1  | `bin/add-new-release.sh content/io/avaje/http/avaje-http-3.8.buildspec ...` |
| <!-- 20260414193116 --> [guava](../content/com/google/guava/README.md) | [33.6.0-jre](../content/com/google/guava/guava-33.6.0-jre.buildspec) :white_check_mark: | 33.6.0-android  | `bin/add-new-release.sh content/com/google/guava/guava-33.6.0-jre.buildspec ...` |
| <!-- 20260410002716 --> [avaje-metrics-parent](../content/io/avaje/metrics/README.md) | [9.8](../content/io/avaje/metrics/avaje-metrics-9.8.buildspec) :white_check_mark: | [9.9-RC1](../content/io/avaje/metrics/avaje-metrics-9.9-RC1.buildspec) | `bin/add-new-release.sh content/io/avaje/metrics/avaje-metrics-9.8.buildspec 9.9-RC1` |
| <!-- 20260409182607 --> [lz4-java](../content/at/yawk/lz4/lz4-java/README.md) | [1.10.4](../content/at/yawk/lz4/lz4-java/lz4-java-1.10.4.buildspec) :white_check_mark: | [1.11.0](../content/at/yawk/lz4/lz4-java/lz4-java-1.11.0.buildspec) | `bin/add-new-release.sh content/at/yawk/lz4/lz4-java/lz4-java-1.10.4.buildspec 1.11.0` |
| <!-- 20260406231734 --> [avaje-inject-parent](../content/io/avaje/inject/README.md) | [12.5-javax](../content/io/avaje/inject/avaje-inject-12.5-javax.buildspec) :white_check_mark: | 12.5  | `bin/add-new-release.sh content/io/avaje/inject/avaje-inject-12.5-javax.buildspec ...` |
| <!-- 20260331230730 --> [byte-buddy-parent](../content/net/bytebuddy/README.md) | [1.18.8-jdk5](../content/net/bytebuddy/byte-buddy-1.18.8-jdk5.buildspec) :white_check_mark: | 1.18.8 1.18.7-jdk5 1.18.6-jdk6-jdk5 1.18.6-jdk5  | `bin/add-new-release.sh content/net/bytebuddy/byte-buddy-1.18.8-jdk5.buildspec ...` |
| <!-- 20260324175137 --> [hk2-parent](../content/org/glassfish/hk2/README.md) | [4.0.0-M4](../content/org/glassfish/hk2/hk2-4.0.0-M4.buildspec) :white_check_mark: | [4.0.0](../content/org/glassfish/hk2/hk2-4.0.0.buildspec) | `bin/add-new-release.sh content/org/glassfish/hk2/hk2-4.0.0-M4.buildspec 4.0.0` |
<!-- END GENERATED ADD OK -->

Apache Release Candidate in Staging https://repository.apache.org
-----------------------------------------------------------------

<!-- BEGIN GENERATED ADD STAGING -->
|    | artifactId | from | to | command |
| -- | ---------- | ---- | -- | ------- |
| <!-- 20260422145028 --> [:mailbox:](https://lists.apache.org/list?dev@camel.apache.org:lte=1M:VOTE) | [camel](../content/org/apache/camel/camel/README.md) | [4.10.0](../content/org/apache/camel/camel/camel-4.10.0.buildspec) :x: | [4.20.0](../content/org/apache/camel/camel/camel-4.20.0.buildspec)  | `bin/add-new-release.sh content/org/apache/camel/camel/camel-4.10.0.buildspec 4.20.0 staging` |
| <!-- 20260407143202 --> [:mailbox:](https://lists.apache.org/list?dev@commons.apache.org:lte=1M:VOTE) | [commons-parent](../content/org/apache/commons/parent/README.md) | [98](../content/org/apache/commons/parent/commons-parent-98.buildspec) :white_check_mark: | [99](../content/org/apache/commons/parent/commons-parent-99.buildspec)  | `bin/add-new-release.sh content/org/apache/commons/parent/commons-parent-98.buildspec 99 staging` |
| <!-- 20260331210846 --> [:mailbox:](https://lists.apache.org/list?dev@pulsar.apache.org:lte=1M:VOTE) | [pulsar](../content/org/apache/pulsar/README.md) | [4.2.0](../content/org/apache/pulsar/pulsar-4.2.0.buildspec) :warning: [:memo:](https://github.com/apache/pulsar/issues/24718) | [4.2.1](../content/org/apache/pulsar/pulsar-4.2.1.buildspec)  | `bin/add-new-release.sh content/org/apache/pulsar/pulsar-4.2.0.buildspec 4.2.1 staging` |
| <!-- 20260213170408 --> [:mailbox:](https://lists.apache.org/list?dev@karaf.apache.org:lte=1M:VOTE) | [karaf](../content/org/apache/karaf/karaf/README.md) | [4.4.10](../content/org/apache/karaf/karaf/karaf-4.4.10.buildspec) :warning: [:memo:](https://issues.apache.org/jira/browse/KARAF-7797) | [4.4.11](../content/org/apache/karaf/karaf/karaf-4.4.11.buildspec)  | `bin/add-new-release.sh content/org/apache/karaf/karaf/karaf-4.4.10.buildspec 4.4.11 staging` |
| <!-- 20251120023125 --> [:mailbox:](https://lists.apache.org/list?dev@paimon.apache.org:lte=1M:VOTE) | [paimon-parent](../content/org/apache/paimon/README.md) | [1.3.1](../content/org/apache/paimon/paimon-parent-1.3.1.buildspec) :warning: [:memo:](https://github.com/apache/paimon/issues/6557) | [1.4.1](../content/org/apache/paimon/paimon-parent-1.4.1.buildspec)  | `bin/add-new-release.sh content/org/apache/paimon/paimon-parent-1.3.1.buildspec 1.4.1 staging` |
| <!-- 20251031151956 --> [:mailbox:](https://lists.apache.org/list?dev@maven.apache.org:lte=1M:VOTE) | [maven-invoker-plugin](../content/org/apache/maven/plugins/maven-invoker-plugin/README.md) | [3.9.1](../content/org/apache/maven/plugins/maven-invoker-plugin/maven-invoker-plugin-3.9.1.buildspec) :white_check_mark: | [3.10.0](../content/org/apache/maven/plugins/maven-invoker-plugin/maven-invoker-plugin-3.10.0.buildspec)  | `bin/add-new-release.sh content/org/apache/maven/plugins/maven-invoker-plugin/maven-invoker-plugin-3.9.1.buildspec 3.10.0 staging` |
| <!-- 20250213085016 --> [:mailbox:](https://lists.apache.org/list?dev@ignite.apache.org:lte=1M:VOTE) | [apache-ignite](../content/org/apache/ignite/README.md) | [2.17.0](../content/org/apache/ignite/ignite-2.17.0.buildspec) :warning: | [3.0.0-alpha5](../content/org/apache/ignite/ignite-3.0.0-alpha5.buildspec)  | `bin/add-new-release.sh content/org/apache/ignite/ignite-2.17.0.buildspec 3.0.0-alpha5 staging` |
| <!-- 20250207104350 --> [:mailbox:](https://lists.apache.org/list?dev@sling.apache.org:lte=1M:VOTE) | [org.apache.sling.installer.factory.configuration](../content/org/apache/sling/org.apache.sling.installer.factory.configuration/README.md) | [1.4.10](../content/org/apache/sling/org.apache.sling.installer.factory.configuration/org.apache.sling.installer.factory.configuration-1.4.10.buildspec) :white_check_mark: | [2.0.0](../content/org/apache/sling/org.apache.sling.installer.factory.configuration/org.apache.sling.installer.factory.configuration-2.0.0.buildspec)  | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.installer.factory.configuration/org.apache.sling.installer.factory.configuration-1.4.10.buildspec 2.0.0 staging` |
| <!-- 20230519062523 --> [:mailbox:](https://lists.apache.org/list?dev@sling.apache.org:lte=1M:VOTE) | [org.apache.sling.installer.console](../content/org/apache/sling/org.apache.sling.installer.console/README.md) | [1.1.2](../content/org/apache/sling/org.apache.sling.installer.console/org.apache.sling.installer.console-1.1.2.buildspec) :white_check_mark: | [2.0.0](../content/org/apache/sling/org.apache.sling.installer.console/org.apache.sling.installer.console-2.0.0.buildspec)  | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.installer.console/org.apache.sling.installer.console-1.1.2.buildspec 2.0.0 staging` |
<!-- END GENERATED ADD STAGING -->

New Release of non-Reproducible Previous
----------------------------------------

<!-- BEGIN GENERATED ADD KO -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20260422173741 --> [quarkus-project](../content/io/quarkus/README.md) | [3.34.5](../content/io/quarkus/quarkus-3.34.5.buildspec) :warning: | [3.35.0](../content/io/quarkus/quarkus-3.35.0.buildspec) | `bin/add-new-release.sh content/io/quarkus/quarkus-3.34.5.buildspec 3.35.0` |
| <!-- 20260422164838 --> [langchain4j](../content/dev/langchain4j/README.md) | [1.13.0](../content/dev/langchain4j/langchain4j-1.13.0.buildspec) :warning: [:memo:](https://github.com/langchain4j/langchain4j/pull/4912) | [1.13.1](../content/dev/langchain4j/langchain4j-1.13.1.buildspec) | `bin/add-new-release.sh content/dev/langchain4j/langchain4j-1.13.0.buildspec 1.13.1` |
| <!-- 20260422145028 --> [camel](../content/org/apache/camel/camel/README.md) | [4.10.0](../content/org/apache/camel/camel/camel-4.10.0.buildspec) :x: | [4.19.0](../content/org/apache/camel/camel/camel-4.19.0.buildspec) | `bin/add-new-release.sh content/org/apache/camel/camel/camel-4.10.0.buildspec 4.19.0` |
| <!-- 20260422142729 --> [legend-engine](../content/org/finos/legend/engine/README.md) | [4.71.1](../content/org/finos/legend/engine/legend-engine-4.71.1.buildspec) :warning: [:memo:](https://github.com/finos/legend-engine/pull/1337#issuecomment-1508509457) | [4.128.1](../content/org/finos/legend/engine/legend-engine-4.128.1.buildspec) | `bin/add-new-release.sh content/org/finos/legend/engine/legend-engine-4.71.1.buildspec 4.128.1` |
| <!-- 20260421204056 --> [opentelemetry-instrumentation-api](../content/io/opentelemetry/instrumentation/README.md) | [2.25.0](../content/io/opentelemetry/instrumentation/opentelemetry-2.25.0.buildspec) :x: | [2.27.0](../content/io/opentelemetry/instrumentation/opentelemetry-2.27.0.buildspec) | `bin/add-new-release.sh content/io/opentelemetry/instrumentation/opentelemetry-2.25.0.buildspec 2.27.0` |
| <!-- 20260421110449 --> [commons-rng-parent](../content/org/apache/commons/rng/README.md) | [1.6](../content/org/apache/commons/rng/rng-1.6.buildspec) :warning: | [1.7](../content/org/apache/commons/rng/rng-1.7.buildspec) | `bin/add-new-release.sh content/org/apache/commons/rng/rng-1.6.buildspec 1.7` |
| <!-- 20260420093550 --> [commons-numbers-parent](../content/org/apache/commons/numbers/README.md) | [1.2](../content/org/apache/commons/numbers/commons-numbers-1.2.buildspec) :warning: | [1.3](../content/org/apache/commons/numbers/commons-numbers-1.3.buildspec) | `bin/add-new-release.sh content/org/apache/commons/numbers/commons-numbers-1.2.buildspec 1.3` |
| <!-- 20260418161112 --> [convex](../content/world/convex/README.md) | [0.8.3](../content/world/convex/convex-0.8.3.buildspec) :warning: | [0.8.4](../content/world/convex/convex-0.8.4.buildspec) | `bin/add-new-release.sh content/world/convex/convex-0.8.3.buildspec 0.8.4` |
| <!-- 20260417195940 --> [com.io7m.xstructural](../content/com/io7m/xstructural/README.md) | [2.0.1](../content/com/io7m/xstructural/com.io7m.xstructural-2.0.1.buildspec) :warning: | [2.1.0](../content/com/io7m/xstructural/com.io7m.xstructural-2.1.0.buildspec) | `bin/add-new-release.sh content/com/io7m/xstructural/com.io7m.xstructural-2.0.1.buildspec 2.1.0` |
| <!-- 20260416210156 --> [parent](../content/org/phoebus/README.md) | [5.0.2](../content/org/phoebus/phoebus-5.0.2.buildspec) :warning: | [5.0.4](../content/org/phoebus/phoebus-5.0.4.buildspec) | `bin/add-new-release.sh content/org/phoebus/phoebus-5.0.2.buildspec 5.0.4` |
| <!-- 20260416162122 --> [swagger-ui](../content/org/webjars/swagger-ui/README.md) | [5.15.2](../content/org/webjars/swagger-ui/swagger-ui-5.15.2.buildspec) :x: | [5.32.4](../content/org/webjars/swagger-ui/swagger-ui-5.32.4.buildspec) | `bin/add-new-release.sh content/org/webjars/swagger-ui/swagger-ui-5.15.2.buildspec 5.32.4` |
| <!-- 20260414011517 --> [jooby](../content/io/jooby/README.md) | [4.2.0](../content/io/jooby/jooby-4.2.0.buildspec) :warning: | [4.4.0](../content/io/jooby/jooby-4.4.0.buildspec) | `bin/add-new-release.sh content/io/jooby/jooby-4.2.0.buildspec 4.4.0` |
| <!-- 20260410173151 --> [nifi](../content/org/apache/nifi/nifi/README.md) | [2.8.0](../content/org/apache/nifi/nifi/nifi-2.8.0.buildspec) :warning: | [2.9.0](../content/org/apache/nifi/nifi/nifi-2.9.0.buildspec) | `bin/add-new-release.sh content/org/apache/nifi/nifi/nifi-2.8.0.buildspec 2.9.0` |
| <!-- 20260408223853 --> [jspwiki-builder](../content/org/apache/jspwiki/README.md) | [2.12.3](../content/org/apache/jspwiki/jspwiki-2.12.3.buildspec) :warning: | [2.12.4](../content/org/apache/jspwiki/jspwiki-2.12.4.buildspec) | `bin/add-new-release.sh content/org/apache/jspwiki/jspwiki-2.12.3.buildspec 2.12.4` |
| <!-- 20260408054222 --> [jline](../content/org/jline/README.md) | [4.0.10](../content/org/jline/jline-4.0.10.buildspec) :warning: | [4.0.12](../content/org/jline/jline-4.0.12.buildspec) | `bin/add-new-release.sh content/org/jline/jline-4.0.10.buildspec 4.0.12` |
| <!-- 20260403090725 --> [git-commit-id-maven-plugin](../content/io/github/git-commit-id/README.md) | [9.0.0](../content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec) :x: | [10.0.0](../content/io/github/git-commit-id/git-commit-id-maven-plugin-10.0.0.buildspec) | `bin/add-new-release.sh content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec 10.0.0` |
| <!-- 20260326141808 --> [efx-toolkit-java](../content/eu/europa/ted/eforms/efx-toolkit-java/README.md) | [2.0.0-alpha.5](../content/eu/europa/ted/eforms/efx-toolkit-java/efx-toolkit-java-2.0.0-alpha.5.buildspec) :warning: | [2.0.0-alpha.6](../content/eu/europa/ted/eforms/efx-toolkit-java/efx-toolkit-java-2.0.0-alpha.6.buildspec) | `bin/add-new-release.sh content/eu/europa/ted/eforms/efx-toolkit-java/efx-toolkit-java-2.0.0-alpha.5.buildspec 2.0.0-alpha.6` |
| <!-- 20260325134419 --> [glassfish-parent](../content/org/glassfish/main/README.md) | [8.0.0-JDK17-M12](../content/org/glassfish/main/glassfish-8.0.0-JDK17-M12.buildspec) :warning: [:memo:](https://github.com/eclipse-ee4j/glassfish/issues/24615#issuecomment-3850537179) | [9.0.0-M1](../content/org/glassfish/main/glassfish-9.0.0-M1.buildspec) | `bin/add-new-release.sh content/org/glassfish/main/glassfish-8.0.0-JDK17-M12.buildspec 9.0.0-M1` |
| <!-- 20260324231035 --> [trino-root](../content/io/trino/README.md) | [477](../content/io/trino/trino-477.buildspec) :warning: | [480](../content/io/trino/trino-480.buildspec) | `bin/add-new-release.sh content/io/trino/trino-477.buildspec 480` |
| <!-- 20260317154519 --> [logback-parent-db](../content/ch/qos/logback/db/README.md) | [1.2.11](../content/ch/qos/logback/db/logback-db-1.2.11.buildspec) :warning: [:memo:](https://github.com/qos-ch/logback-db/pull/2) | [1.5.32](../content/ch/qos/logback/db/logback-db-1.5.32.buildspec) | `bin/add-new-release.sh content/ch/qos/logback/db/logback-db-1.2.11.buildspec 1.5.32` |
| <!-- 20260311211200 --> [mockito-core](../content/org/mockito/mockito-core/README.md) | [5.22.0](../content/org/mockito/mockito-core/mockito-5.22.0.buildspec) :warning: | [5.23.0](../content/org/mockito/mockito-core/mockito-5.23.0.buildspec) | `bin/add-new-release.sh content/org/mockito/mockito-core/mockito-5.22.0.buildspec 5.23.0` |
| <!-- 20260309064933 --> [arthas-all](../content/com/taobao/arthas/README.md) | [4.1.0](../content/com/taobao/arthas/arthas-4.1.0.buildspec) :warning: [:memo:](https://github.com/alibaba/arthas/pull/3001) | [4.1.8](../content/com/taobao/arthas/arthas-4.1.8.buildspec) | `bin/add-new-release.sh content/com/taobao/arthas/arthas-4.1.0.buildspec 4.1.8` |
| <!-- 20260307174517 --> [plotsquared-bukkit](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/README.md) | [7.5.4](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.4.buildspec) :x: | [7.5.12](../content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.12.buildspec) | `bin/add-new-release.sh content/com/intellectualsites/plotsquared/plotsquared-bukkit/plotsquared-7.5.4.buildspec 7.5.12` |
| <!-- 20260227155718 --> [shiro-root](../content/org/apache/shiro/README.md) | [2.1.0](../content/org/apache/shiro/shiro-2.1.0.buildspec) :warning: | [3.0.0-alpha-1](../content/org/apache/shiro/shiro-3.0.0-alpha-1.buildspec) | `bin/add-new-release.sh content/org/apache/shiro/shiro-2.1.0.buildspec 3.0.0-alpha-1` |
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
| <!-- 20260420152020 --> [jakarta.activation-api](../content/jakarta/activation/jakarta.activation-api/README.md) | 2.2.0-M2 :warning: |
| <!-- 20260415100521 --> [eforms-sdk](../content/eu/europa/ted/eforms/eforms-sdk/README.md) | 2.0.0-alpha.2 :warning: |
| <!-- 20260411162852 --> [dependency-check-parent](../content/org/owasp/dependency-check/README.md) | 12.2.1 :warning: |
| <!-- 20260411074716 --> [jpmml-sparkml](../content/org/jpmml/jpmml-sparkml/README.md) | 3.3.3 :warning: |
| <!-- 20260410112238 --> [jackrabbit-parent](../content/org/apache/jackrabbit/jackrabbit/README.md) | 2.23.4-beta :warning: |
| <!-- 20260408152748 --> [mybatis-generator](../content/org/mybatis/generator/README.md) | 2.0.0 :warning: |
| <!-- 20260408122716 --> [toolbox](../content/eu/maveniverse/maven/toolbox/README.md) | 0.15.8 :warning: |
| <!-- 20260408101124 --> [jdplus-incubator](../content/eu/europa/ec/joinup/sat/jdplus-incubator/README.md) | 2.4.1 :warning: |
| <!-- 20260405131522 --> [com.io7m.primogenitor](../content/com/io7m/primogenitor/README.md) | 9.2.0 :warning: |
| <!-- 20260405080611 --> [jpmml-sklearn](../content/org/jpmml/jpmml-sklearn/README.md) | 1.9.36 :warning: |
| <!-- 20260404032907 --> [ratis](../content/org/apache/ratis/README.md) | 3.2.2 :warning: |
| <!-- 20260403120336 --> [syncope](../content/org/apache/syncope/README.md) | 4.1.0 :warning: |
| <!-- 20260331210846 --> [pulsar](../content/org/apache/pulsar/README.md) | 4.2.0 :warning: [:memo:](https://github.com/apache/pulsar/issues/24718) |
| <!-- 20260329005522 --> [spotbugs-maven-plugin](../content/com/github/spotbugs/spotbugs-maven-plugin/README.md) | 4.9.8.3 :warning: [:memo:](https://github.com/spotbugs/spotbugs-maven-plugin/issues/1148) |
| <!-- 20260326135347 --> [eforms-core-java](../content/eu/europa/ted/eforms/eforms-core-java/README.md) | 1.6.0 :warning: |
| <!-- 20260323120711 --> [fediz](../content/org/apache/cxf/fediz/README.md) | 1.7.2 :warning: |
| <!-- 20260323104123 --> [tika](../content/org/apache/tika/README.md) | 3.3.0 :warning: [:memo:](https://issues.apache.org/jira/browse/TIKA-4470) |
| <!-- 20260320162651 --> [kubernetes-client-project](../content/io/fabric8/kubernetes-client/README.md) | 7.6.1 :warning: |
| <!-- 20260320142559 --> [apache-rat-project](../content/org/apache/rat/README.md) | 0.18 :warning: [:memo:](https://issues.apache.org/jira/browse/RAT-536) |
| <!-- 20260318202349 --> [commons-net](../content/org/apache/commons/net/README.md) | 3.13.0 :warning: |
| <!-- 20260309133844 --> [org.apache.sling.starter](../content/org/apache/sling/org.apache.sling.starter/README.md) | 14 :warning: |
| <!-- 20260307162319 --> [bundlebee](../content/io/yupiik/bundlebee/README.md) | 1.0.32 :warning: |
| <!-- 20260306103720 --> [jdplus-main](../content/eu/europa/ec/joinup/sat/jdplus-main/README.md) | 3.7.1 :warning: |
| <!-- 20260305212234 --> [zookeeper](../content/org/apache/zookeeper/README.md) | 3.9.5 :warning: |
| <!-- 20260304124538 --> [project](../content/org/glassfish/mq/README.md) | 6.8.0 :warning: |
| <!-- 20260302154005 --> [orc](../content/org/apache/orc/README.md) | 2.3.0 :warning: |
| <!-- 20260228173809 --> [jreleaser](../content/org/jreleaser/README.md) | 1.23.0 :warning: |
| <!-- 20260228122655 --> [org.apache.sling.models.impl](../content/org/apache/sling/org.apache.sling.models.impl/README.md) | 2.0.2 :warning: |
| <!-- 20260224100331 --> [io.wcm.caconfig.editor.root](../content/io/wcm/io.wcm.caconfig/README.md) | 1.16.10 :warning: |
| <!-- 20260223124650 --> [maven-resolver](../content/org/apache/maven/resolver/maven-resolver/README.md) | 2.0.16 :warning: |
| <!-- 20260223090309 --> [org.apache.sling.pipes](../content/org/apache/sling/org.apache.sling.pipes/README.md) | 4.5.2 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-pipes/pull/20) |
| <!-- 20260217140648 --> [jdplus-sdmx](../content/com/github/nbbrd/jdplus-sdmx/README.md) | 3.3.4 :warning: [:memo:](https://github.com/apache/netbeans-mavenutils-nbm-maven-plugin/issues/133) |
| <!-- 20260217125724 --> [sdmx-dl-parent](../content/com/github/nbbrd/sdmx-dl/README.md) | 3.0.0-beta.18 :warning: |
| <!-- 20260213170408 --> [karaf](../content/org/apache/karaf/karaf/README.md) | 4.4.10 :warning: [:memo:](https://issues.apache.org/jira/browse/KARAF-7797) |
| <!-- 20260212134211 --> [flink-kubernetes-operator-parent](../content/org/apache/flink/flink-kubernetes-operator/README.md) | 1.14.0 :warning: |
| <!-- 20260210134043 --> [acs-aem-commons](../content/com/adobe/acs/aem-commons/README.md) | 6.16.0 :warning: |
| <!-- 20260207133315 --> [com.io7m.ervilla](../content/com/io7m/ervilla/README.md) | 1.1.0 :warning: |
| <!-- 20260207032218 --> [openfasttrace](../content/org/itsallcode/openfasttrace/README.md) | 4.2.1 :warning: |
| <!-- 20260205185517 --> [jpmml-codemodel](../content/org/jpmml/jpmml-codemodel/README.md) | 1.2.2 :warning: |
| <!-- 20260205180917 --> [jpmml-r](../content/org/jpmml/jpmml-r/README.md) | 1.7.9 :warning: |
| <!-- 20260205085048 --> [jquery-ui](../content/org/webjars/jquery-ui/README.md) | 1.14.2 :x: |
| <!-- 20260204110717 --> [jpmml-h2o](../content/org/jpmml/jpmml-h2o/README.md) | 1.3.5 :warning: |
| <!-- 20260204102700 --> [jpmml-xgboost](../content/org/jpmml/jpmml-xgboost/README.md) | 1.9.6 :warning: |
| <!-- 20260204095522 --> [jpmml-transpiler](../content/org/jpmml/jpmml-transpiler/README.md) | 1.5.1 :warning: |
| <!-- 20260203213040 --> [jpmml-lightgbm](../content/org/jpmml/jpmml-lightgbm/README.md) | 1.6.5 :warning: |
| <!-- 20260203211712 --> [jpmml-statsmodels](../content/org/jpmml/jpmml-statsmodels/README.md) | 1.3.12 :warning: |
| <!-- 20260203205825 --> [jpmml-python](../content/org/jpmml/jpmml-python/README.md) | 1.3.19 :warning: |
| <!-- 20260203131130 --> [jpmml-converter](../content/org/jpmml/jpmml-converter/README.md) | 1.6.9 :warning: |
| <!-- 20260201120712 --> [jpmml-evaluator](../content/org/jpmml/jpmml-evaluator/README.md) | 1.7.7 :warning: |
| <!-- 20260131133916 --> [jpmml-model](../content/org/jpmml/jpmml-model/README.md) | 1.7.7 :warning: [:memo:](https://github.com/jpmml/jpmml-model/issues/42) |
| <!-- 20260126185715 --> [avaje-config](../content/io/avaje/config/README.md) | 5.1 :warning: [:memo:](https://github.com/avaje/avaje-config/issues/254) |
| <!-- 20260124074934 --> [tycho](../content/org/eclipse/tycho/README.md) | 5.0.2 :warning: |
| <!-- 20260123003519 --> [teamcity-formatter](../content/io/cucumber/teamcity-formatter/README.md) | 0.3.0 :warning: |
| <!-- 20260122021714 --> [usage-formatter](../content/io/cucumber/usage-formatter/README.md) | 0.2.0 :warning: |
| <!-- 20260118212315 --> [xml-maven-plugin](../content/org/codehaus/mojo/xml-maven-plugin/README.md) | 1.2.1 :warning: [:memo:](https://github.com/mojohaus/xml-maven-plugin/issues/155) |
| <!-- 20260113132719 --> [klass](../content/cool/klass/README.md) | 0.6.0 :warning: [:memo:](https://github.com/liftwizard/klass/issues/608) |
| <!-- 20260112205449 --> [atom-jaxb-parent](../content/fr/vidal/oss/README.md) | 2.0.0 :warning: |
| <!-- 20260110100713 --> [unexepack](../content/io/github/albertus82/unexepack/README.md) | 1.0.0 :warning: |
| <!-- 20260108121527 --> [com.io7m.verona](../content/com/io7m/verona/README.md) | 1.1.0 :warning: |
| <!-- 20260106215513 --> [commons-pool2](../content/org/apache/commons/commons-pool2/README.md) | 2.13.1 :warning: |
| <!-- 20260104100712 --> [com.io7m.seltzer](../content/com/io7m/seltzer/README.md) | 1.3.0 :warning: |
| <!-- 20251229192147 --> [mybatis-2-spring](../content/org/mybatis/mybatis-2-spring/README.md) | 1.2.2 :warning: |
| <!-- 20251229095723 --> [evm-abi-decoder](../content/net/osslabz/evm-abi-decode/README.md) | 0.1.6 :warning: |
| <!-- 20251228170116 --> [mybatis-spring-boot](../content/org/mybatis/spring/boot/README.md) | 4.0.1 :warning: |
| <!-- 20251222125523 --> [com.io7m.jsamplebuffer](../content/com/io7m/jsamplebuffer/README.md) | 1.0.1 :warning: |
| <!-- 20251221210113 --> [credentialmanager](../content/com/github/philippheuer/credentialmanager/README.md) | 0.4.0 :warning: |
| <!-- 20251218112519 --> [jdplus-benchmarking](../content/eu/europa/ec/joinup/sat/jdplus-benchmarking/README.md) | 2.1.0 :warning: |
| <!-- 20251216135604 --> [yupiik-tools-maven-plugin-parent](../content/io/yupiik/maven/plugin/README.md) | 1.2.13 :warning: |
| <!-- 20251216105703 --> [commons-daemon](../content/org/apache/commons/commons-daemon/README.md) | 1.5.1 :warning: |
| <!-- 20251210184449 --> [jmeter-java-dsl-parent](../content/us/abstracta/jmeter/jmeter-java-dsl/README.md) | 2.2 :warning: |
| <!-- 20251210155324 --> [com.io7m.dixmont](../content/com/io7m/dixmont/README.md) | 3.1.0 :warning: |
| <!-- 20251207221548 --> [commons-text](../content/org/apache/commons/commons-text/README.md) | 1.15.0 :warning: |
| <!-- 20251204234146 --> [htmlcompressor](../content/com/github/hazendaz/htmlcompressor/README.md) | 2.3.1 :warning: |
| <!-- 20251202181343 --> [jandex-parent](../content/io/smallrye/jandex/README.md) | 3.5.3 :warning: |
| <!-- 20251130174727 --> [com.io7m.looseleaf](../content/com/io7m/looseleaf/README.md) | 4.0.0 :warning: |
| <!-- 20251128133200 --> [hugegraph](../content/org/apache/hugegraph/README.md) | 1.7.0 :warning: |
| <!-- 20251128083720 --> [eforms-sdk-analyzer](../content/eu/europa/ted/eforms/eforms-sdk-analyzer/README.md) | 1.14.0 :warning: |
| <!-- 20251126094339 --> [dubbo](../content/org/apache/dubbo/README.md) | 3.3.6 :warning: |
| <!-- 20251125082343 --> [jaxb-tools-project](../content/org/jvnet/jaxb/README.md) | 4.0.12 :warning: [:memo:](https://github.com/highsource/jaxb-tools/issues/642) |
| <!-- 20251123193609 --> [hive](../content/org/apache/hive/README.md) | 4.2.0 :warning: [:memo:](https://issues.apache.org/jira/browse/HIVE-28186) |
| <!-- 20251120023125 --> [paimon-parent](../content/org/apache/paimon/README.md) | 1.3.1 :warning: [:memo:](https://github.com/apache/paimon/issues/6557) |
| <!-- 20251119204747 --> [gwt-commons-validator](../content/de/knightsoft-net/gwt-commons-validator/README.md) | 1.10.1-0 :warning: |
| <!-- 20251030133124 --> [jdbc-url-parser](../content/net/osslabz/jdbc-url-parser/README.md) | 0.1.1 :warning: |
| <!-- 20251029202934 --> [turnstile-siteverify-client](../content/net/osslabz/turnstile-siteverify-client/README.md) | 0.4.1 :warning: |
| <!-- 20251024120236 --> [com.io7m.cardant](../content/com/io7m/cardant/README.md) | 1.0.0-beta0002 :x: |
| <!-- 20251015201339 --> [avro-toplevel](../content/org/apache/avro/README.md) | 1.12.1 :warning: |
| <!-- 20251015170335 --> [jakarta.servlet-api](../content/jakarta/servlet/jakarta.servlet-api/README.md) | 6.2.0-M1 :x: |
| <!-- 20250923122249 --> [jaxb-parent](../content/org/glassfish/jaxb/README.md) | 4.0.6 :warning: |
| <!-- 20250919111500 --> [jakarta.mail-api](../content/jakarta/mail/jakarta.mail-api/README.md) | 2.2.0-M1 :warning: |
| <!-- 20250912154637 --> [cellar](../content/org/apache/karaf/cellar/README.md) | 4.4.8 :warning: [:memo:](https://github.com/apache/karaf-cellar/pull/153) |
| <!-- 20250911141308 --> [angus-activation-project](../content/org/eclipse/angus/activation/README.md) | 2.1.0-M1 :warning: |
| <!-- 20250829092417 --> [plc4x-parent](../content/org/apache/plc4x/plc4x/README.md) | 0.13.1 :warning: [:memo:](https://github.com/apache/plc4x/pull/2407) |
| <!-- 20250803190135 --> [psi-probe](../content/com/github/psi-probe/README.md) | 5.3.0 :warning: |
| <!-- 20250707085541 --> [java-sql-parent](../content/com/github/nbbrd/java-sql-util/README.md) | 1.0.7 :warning: |
| <!-- 20250702142639 --> [rainbowgum-maven-parent](../content/io/jstach/rainbowgum/README.md) | 0.8.2 :warning: |
| <!-- 20250628075449 --> [drill-root](../content/org/apache/drill/README.md) | 1.22.0 :warning: |
| <!-- 20250619093642 --> [org.apache.sling.feature.launcher](../content/org/apache/sling/org.apache.sling.feature.launcher/README.md) | 1.3.4 :warning: |
| <!-- 20250603145335 --> [io.takari.incrementalbuild](../content/io/takari/incrementalbuild/README.md) | 1.0.4 :warning: |
| <!-- 20250522194000 --> [com.io7m.gtyrell](../content/com/io7m/gtyrell/README.md) | 4.0.1 :warning: |
| <!-- 20250519085748 --> [org.apache.sling.feature.cpconverter](../content/org/apache/sling/org.apache.sling.feature.cpconverter/README.md) | 1.3.10 :warning: |
| <!-- 20250519063835 --> [org.apache.sling.distribution.core](../content/org/apache/sling/org.apache.sling.distribution.core/README.md) | 0.7.4 :warning: |
| <!-- 20250509151950 --> [com.io7m.quarrel](../content/com/io7m/quarrel/README.md) | 1.8.0 :warning: |
| <!-- 20250508083646 --> [org.apache.sling.scripting.sightly.testing](../content/org/apache/sling/org.apache.sling.scripting.sightly.testing/README.md) | 1.0.40-1.4.0 :warning: |
| <!-- 20250507175507 --> [com.io7m.mime2045](../content/com/io7m/mime2045/README.md) | 1.2.0 :warning: |
| <!-- 20250504172405 --> [com.io7m.jbssio](../content/com/io7m/jbssio/README.md) | 3.0.0 :warning: |
| <!-- 20250503162925 --> [com.io7m.trasco](../content/com/io7m/trasco/README.md) | 3.1.1 :warning: |
| <!-- 20250430084041 --> [com.io7m.certusine](../content/com/io7m/certusine/README.md) | 3.2.0 :warning: |
| <!-- 20250424080642 --> [electrum-client](../content/net/osslabz/electrum-client/README.md) | 0.2.16 :warning: |
| <!-- 20250423191555 --> [bitcoin-commons](../content/net/osslabz/bitcoin-commons/README.md) | 0.3.0 :warning: |
| <!-- 20250422082642 --> [crypto-commons](../content/net/osslabz/crypto-commons/README.md) | 0.6.4 :warning: [:memo:](https://github.com/osslabz/crypto-commons/pull/54) |
| <!-- 20250418115815 --> [systemds](../content/org/apache/systemds/README.md) | 3.3.0 :warning: [:memo:](https://github.com/apache/systemds/pull/2257) |
| <!-- 20250403121924 --> [winrm-java](../content/org/metricshub/winrm-java/README.md) | 1.1.02 :warning: |
| <!-- 20250331033615 --> [aspectj-maven-plugin](../content/dev/aspectj/aspectj-maven-plugin/README.md) | 1.14.1 :warning: |
| <!-- 20250325094930 --> [camel-k-runtime-project](../content/org/apache/camel/camel-k-runtime/README.md) | 3.15.3 :warning: |
| <!-- 20250323131510 --> [packager-maven-plugin](../content/org/jpmml/packager-maven-plugin/README.md) | 1.1.0 :warning: |
| <!-- 20250318103725 --> [json-rpc-client](../content/net/osslabz/json-rpc-client/README.md) | 0.0.4 :warning: |
| <!-- 20250310171441 --> [axis2](../content/org/apache/axis2/README.md) | 2.0.0 :warning: [:memo:](https://github.com/apache/axis-axis2-java-core/pull/879) |
| <!-- 20250226101218 --> [baremaps](../content/org/apache/baremaps/README.md) | 0.8.2 :warning: [:memo:](https://github.com/apache/incubator-baremaps/pull/951) |
| <!-- 20250225165035 --> [slf4j-parent](../content/org/slf4j/README.md) | 2.1.0-alpha1 :warning: |
| <!-- 20250217124403 --> [winrm](../content/org/sentrysoftware/winrm/README.md) | 1.1.01 :warning: |
| <!-- 20250214132638 --> [commons-vfs2](../content/org/apache/commons/commons-vfs2/README.md) | 2.10.0 :warning: |
| <!-- 20250213085016 --> [apache-ignite](../content/org/apache/ignite/README.md) | 2.17.0 :warning: |
| <!-- 20250203233329 --> [axiom](../content/org/apache/ws/commons/axiom/README.md) | 2.0.0 :warning: |
| <!-- 20250201215052 --> [ftpserver-parent](../content/org/apache/mina/ftpserver/README.md) | 1.2.1 :warning: |
| <!-- 20250103195806 --> [ldapchai](../content/com/github/ldapchai/README.md) | 0.8.7 :warning: |
| <!-- 20241215170740 --> [reload4j](../content/ch/qos/reload4j/README.md) | 1.2.26 :warning: |
| <!-- 20241207223709 --> [royale-typedefs-parent](../content/org/apache/royale/typedefs/README.md) | 0.9.12 :warning: |
| <!-- 20241207223516 --> [royale-framework-parent](../content/org/apache/royale/framework/README.md) | 0.9.12 :warning: |
| <!-- 20241207221427 --> [compiler](../content/org/apache/royale/compiler/README.md) | 0.9.12 :warning: |
| <!-- 20241112125327 --> [coingecko-java](../content/net/osslabz/coingecko-java/README.md) | 1.2.0 :warning: |
| <!-- 20241106160454 --> [tomcat-authnz-spnego-ad](../content/net/sf/michael-o/tomcat/tomcat-authnz-spnego-ad/README.md) | 4.2.4 :warning: [:memo:](https://github.com/michael-o/tomcatspnegoad/issues/32) |
| <!-- 20241018172054 --> [org.apache.sling.commons.metrics](../content/org/apache/sling/org.apache.sling.commons.metrics/README.md) | 1.2.14 :warning: |
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
