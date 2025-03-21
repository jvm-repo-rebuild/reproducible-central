New Releases To Add
===================

<!-- BEGIN GENERATED ADD OK -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20250321201427 --> [byte-buddy-parent](../content/net/bytebuddy/README.md) | [1.17.2](../content/net/bytebuddy/byte-buddy-1.17.2.buildspec) :white_check_mark: | [1.17.3](../content/net/bytebuddy/byte-buddy-1.17.3.buildspec) | `bin/add-new-release.sh content/net/bytebuddy/byte-buddy-1.17.2.buildspec 1.17.3` |
| <!-- 20250321133933 --> [junit-bom](../content/org/junit/junit5/README.md) | [5.12.1](../content/org/junit/junit5/junit5-5.12.1.buildspec) :white_check_mark: | [5.13.0-M1](../content/org/junit/junit5/junit5-5.13.0-M1.buildspec) | `bin/add-new-release.sh content/org/junit/junit5/junit5-5.12.1.buildspec 5.13.0-M1` |
| <!-- 20250321120057 --> [toolbox](../content/eu/maveniverse/maven/toolbox/README.md) | [0.7.1](../content/eu/maveniverse/maven/toolbox/toolbox-0.7.1.buildspec) :white_check_mark: | [0.7.2](../content/eu/maveniverse/maven/toolbox/toolbox-0.7.2.buildspec) | `bin/add-new-release.sh content/eu/maveniverse/maven/toolbox/toolbox-0.7.1.buildspec 0.7.2` |
| <!-- 20250321053334 --> [avaje-jsonb-parent](../content/io/avaje/jsonb/README.md) | [3.2-RC2](../content/io/avaje/jsonb/avaje-jsonb-3.2-RC2.buildspec) :white_check_mark: | [3.2](../content/io/avaje/jsonb/avaje-jsonb-3.2.buildspec) | `bin/add-new-release.sh content/io/avaje/jsonb/avaje-jsonb-3.2-RC2.buildspec 3.2` |
| <!-- 20250321010431 --> [airbase](../content/io/airlift/airbase/README.md) | [236](../content/io/airlift/airbase/airbase-236.buildspec) :white_check_mark: | [237](../content/io/airlift/airbase/airbase-237.buildspec) | `bin/add-new-release.sh content/io/airlift/airbase/airbase-236.buildspec 237` |
| <!-- 20250320180151 --> [org.apache.sling.testing.sling-mock](../content/org/apache/sling/org.apache.sling.testing.sling-mock/README.md) | [3.5.2](../content/org/apache/sling/org.apache.sling.testing.sling-mock/org.apache.sling.testing.sling-mock-3.5.2.buildspec) :white_check_mark: | [3.5.4](../content/org/apache/sling/org.apache.sling.testing.sling-mock/org.apache.sling.testing.sling-mock-3.5.4.buildspec) | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.testing.sling-mock/org.apache.sling.testing.sling-mock-3.5.2.buildspec 3.5.4` |
| <!-- 20250320172712 --> [activemq-parent](../content/org/apache/activemq/README.md) | [6.1.6](../content/org/apache/activemq/activemq-6.1.6.buildspec) :white_check_mark: | 5.17.7  | `bin/add-new-release.sh content/org/apache/activemq/activemq-6.1.6.buildspec ...` |
| <!-- 20250320014016 --> [trino-root](../content/io/trino/README.md) | [472](../content/io/trino/trino-472.buildspec) :white_check_mark: | [473](../content/io/trino/trino-473.buildspec) | `bin/add-new-release.sh content/io/trino/trino-472.buildspec 473` |
| <!-- 20250319222105 --> [guava](../content/com/google/guava/README.md) | [33.4.0-jre](../content/com/google/guava/guava-33.4.0-jre.buildspec) :white_check_mark: | [33.4.5-jre](../content/com/google/guava/guava-33.4.5-jre.buildspec) | `bin/add-new-release.sh content/com/google/guava/guava-33.4.0-jre.buildspec 33.4.5-jre` |
| <!-- 20250319222105 --> [guava](../content/com/google/guava/README.md) | [33.4.0-jre](../content/com/google/guava/guava-33.4.0-jre.buildspec) :white_check_mark: | 33.4.5-android 33.4.4-jre 33.4.4-android 33.4.3-jre 33.4.3-android 33.4.2-jre 33.4.2-android 33.4.1-jre 33.4.1-android  | `bin/add-new-release.sh content/com/google/guava/guava-33.4.0-jre.buildspec ...` |
<!-- END GENERATED ADD OK -->

### Unexpected Diffoscope in Buildspec
`buildcompare` says `ko=0` but `buildspec` configures a `diffoscope` value in following releases:
<!-- BEGIN GENERATED UNEXPECTED DIFFOSCOPE -->
<!-- END GENERATED UNEXPECTED DIFFOSCOPE -->

### Missing Diffoscope in Buildspec
`buildspec` configures a `diffoscope` value to missing file in following releases:
<!-- BEGIN GENERATED MISSING DIFFOSCOPE -->
<!-- END GENERATED MISSING DIFFOSCOPE -->

## Apache Release Candidate in Staging

<!-- BEGIN GENERATED ADD STAGING -->
|    | artifactId | from | to | command |
| -- | ---------- | ---- | -- | ------- |
| <!-- 20250201083537 --> [:mailbox:](https://lists.apache.org/list?dev@camel.apache.org:lte=1M:VOTE) | [camel-k-runtime-project](../content/org/apache/camel/camel-k-runtime/README.md) | [3.15.2](../content/org/apache/camel/camel-k-runtime/camel-k-runtime-3.15.2.buildspec) :warning: | [3.15.3](../content/org/apache/camel/camel-k-runtime/camel-k-runtime-3.15.3.buildspec)  | `bin/add-new-release.sh content/org/apache/camel/camel-k-runtime/camel-k-runtime-3.15.2.buildspec 3.15.3 staging` |
| <!-- 20240118001405 --> [:mailbox:](https://lists.apache.org/list?dev@directory.apache.org:lte=1M:VOTE) | [scimple](../content/org/apache/directory/scimple/README.md) | [1.0.0-M1](../content/org/apache/directory/scimple/scimple-1.0.0-M1.buildspec) :warning: | [1.0.0-M2](../content/org/apache/directory/scimple/scimple-1.0.0-M2.buildspec)  | `bin/add-new-release.sh content/org/apache/directory/scimple/scimple-1.0.0-M1.buildspec 1.0.0-M2 staging` |
| <!-- 20230713001637 --> [:mailbox:](https://lists.apache.org/list?dev@sling.apache.org:lte=1M:VOTE) | [org.apache.sling.testing.paxexam](../content/org/apache/sling/org.apache.sling.testing.paxexam/README.md) | [4.0.0](../content/org/apache/sling/org.apache.sling.testing.paxexam/org.apache.sling.testing.paxexam-4.0.0.buildspec) :white_check_mark: | [4.1.0](../content/org/apache/sling/org.apache.sling.testing.paxexam/org.apache.sling.testing.paxexam-4.1.0.buildspec)  | `bin/add-new-release.sh content/org/apache/sling/org.apache.sling.testing.paxexam/org.apache.sling.testing.paxexam-4.0.0.buildspec 4.1.0 staging` |
| <!-- 20230224162220 --> [:mailbox:](https://lists.apache.org/list?dev@karaf.apache.org:lte=1M:VOTE) | [decanter](../content/org/apache/karaf/decanter/README.md) | [2.10.0](../content/org/apache/karaf/decanter/karaf-decanter-2.10.0.buildspec) :warning: | [2.11.0](../content/org/apache/karaf/decanter/karaf-decanter-2.11.0.buildspec)  | `bin/add-new-release.sh content/org/apache/karaf/decanter/karaf-decanter-2.10.0.buildspec 2.11.0 staging` |
<!-- END GENERATED ADD STAGING -->

## New Release of non-Reproducible Previous

<!-- BEGIN GENERATED ADD KO -->
| artifactId | from | to | command |
| ---------- | ---- | -- | ------- |
| <!-- 20250321151011 --> [legend-engine](../content/org/finos/legend/engine/README.md) | [4.71.1](../content/org/finos/legend/engine/legend-engine-4.71.1.buildspec) :warning: [:memo:](https://github.com/finos/legend-engine/pull/1337#issuecomment-1508509457) | [4.75.0](../content/org/finos/legend/engine/legend-engine-4.75.0.buildspec) | `bin/add-new-release.sh content/org/finos/legend/engine/legend-engine-4.71.1.buildspec 4.75.0` |
| <!-- 20250321065155 --> [protostream-aggregator](../content/org/infinispan/protostream/README.md) | [6.0.0.Dev05](../content/org/infinispan/protostream/protostream-6.0.0.Dev05.buildspec) :x: | [6.0.0.Dev06](../content/org/infinispan/protostream/protostream-6.0.0.Dev06.buildspec) | `bin/add-new-release.sh content/org/infinispan/protostream/protostream-6.0.0.Dev05.buildspec 6.0.0.Dev06` |
| <!-- 20250319220703 --> [commons-csv](../content/org/apache/commons/csv/README.md) | [1.13.0](../content/org/apache/commons/csv/commons-csv-1.13.0.buildspec) :warning: | [1.14.0](../content/org/apache/commons/csv/commons-csv-1.14.0.buildspec) | `bin/add-new-release.sh content/org/apache/commons/csv/commons-csv-1.13.0.buildspec 1.14.0` |
| <!-- 20250317021621 --> [swagger-ui](../content/org/webjars/swagger-ui/README.md) | [5.15.2](../content/org/webjars/swagger-ui/swagger-ui-5.15.2.buildspec) :x: | [5.20.1](../content/org/webjars/swagger-ui/swagger-ui-5.20.1.buildspec) | `bin/add-new-release.sh content/org/webjars/swagger-ui/swagger-ui-5.15.2.buildspec 5.20.1` |
| <!-- 20250311162322 --> [arthas-all](../content/com/taobao/arthas/README.md) | [4.0.4](../content/com/taobao/arthas/arthas-4.0.4.buildspec) :warning: | [4.0.5](../content/com/taobao/arthas/arthas-4.0.5.buildspec) | `bin/add-new-release.sh content/com/taobao/arthas/arthas-4.0.4.buildspec 4.0.5` |
| <!-- 20250309102258 --> [camel](../content/org/apache/camel/camel/README.md) | [4.10.0](../content/org/apache/camel/camel/camel-4.10.0.buildspec) :x: | [4.10.2](../content/org/apache/camel/camel/camel-4.10.2.buildspec) | `bin/add-new-release.sh content/org/apache/camel/camel/camel-4.10.0.buildspec 4.10.2` |
| <!-- 20250304091455 --> [io.wcm.wcm.ui.granite](../content/io/wcm/io.wcm.wcm/ui/granite/README.md) | [1.9.12](../content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.9.12.buildspec) :warning: | [1.10.6](../content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.10.6.buildspec) | `bin/add-new-release.sh content/io/wcm/io.wcm.wcm/ui/granite/wcm-ui-granite-1.9.12.buildspec 1.10.6` |
| <!-- 20250202164211 --> [html-formatter](../content/io/cucumber/html-formatter/README.md) | [20.2.0](../content/io/cucumber/html-formatter/html-formatter-20.2.0.buildspec) :warning: [:memo:](https://github.com/cucumber/html-formatter/issues/207) | [21.9.0](../content/io/cucumber/html-formatter/html-formatter-21.9.0.buildspec) | `bin/add-new-release.sh content/io/cucumber/html-formatter/html-formatter-20.2.0.buildspec 21.9.0` |
| <!-- 20240702171741 --> [git-commit-id-maven-plugin](../content/io/github/git-commit-id/README.md) | [9.0.0](../content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec) :x: | [9.0.1](../content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.1.buildspec) | `bin/add-new-release.sh content/io/github/git-commit-id/git-commit-id-maven-plugin-9.0.0.buildspec 9.0.1` |
| <!-- 20240313094557 --> [io.wcm.wcm.parsys](../content/io/wcm/io.wcm.wcm/parsys/README.md) | [1.6.4](../content/io/wcm/io.wcm.wcm/parsys/wcm-parsys-1.6.4.buildspec) :warning: | [1.7.4](../content/io/wcm/io.wcm.wcm/parsys/wcm-parsys-1.7.4.buildspec) | `bin/add-new-release.sh content/io/wcm/io.wcm.wcm/parsys/wcm-parsys-1.6.4.buildspec 1.7.4` |
| <!-- 20231012160021 --> [parent](../content/org/apache/sis/README.md) | [1.3](../content/org/apache/sis/parent-1.3.buildspec) :warning: [:memo:](https://github.com/apache/sis/pull/36) | [1.4](../content/org/apache/sis/parent-1.4.buildspec) | `bin/add-new-release.sh content/org/apache/sis/parent-1.3.buildspec 1.4` |
<!-- END GENERATED ADD KO -->

## Newest not reproducible

<!-- BEGIN GENERATED NEWEST NOT REPRODUCIBLE -->
| artifactId | newest |
| ---------- | ------ |
| <!-- 20250320144853 --> [orc](../content/org/apache/orc/README.md) | 2.1.1 :warning: |
| <!-- 20250319120632 --> [quarkus-project](../content/io/quarkus/README.md) | 3.21.0 :warning: [:memo:](https://github.com/quarkusio/quarkus/pull/44671) |
| <!-- 20250318182511 --> [jetty-project](../content/org/eclipse/jetty/jetty-project/README.md) | 12.1.0.alpha2 :warning: |
| <!-- 20250318072122 --> [jpmml-sklearn](../content/org/jpmml/jpmml-sklearn/README.md) | 1.9.3 :warning: |
| <!-- 20250317121336 --> [crypto-commons](../content/net/osslabz/crypto-commons/README.md) | 0.6.1 :warning: [:memo:](https://github.com/osslabz/crypto-commons/pull/54) |
| <!-- 20250317082151 --> [bitcoin-commons](../content/net/osslabz/bitcoin-commons/README.md) | 0.3.0 :warning: |
| <!-- 20250315193648 --> [mockito-core](../content/org/mockito/mockito-core/README.md) | 5.16.1 :warning: [:memo:](https://github.com/mockito/mockito/issues/3563) |
| <!-- 20250314140022 --> [acs-aem-commons](../content/com/adobe/acs/aem-commons/README.md) | 6.11.0 :warning: |
| <!-- 20250314135003 --> [glassfish-parent](../content/org/glassfish/main/README.md) | 8.0.0-JDK17-M10 :warning: |
| <!-- 20250314131245 --> [org.apache.sling.distribution.core](../content/org/apache/sling/org.apache.sling.distribution.core/README.md) | 0.7.2 :warning: |
| <!-- 20250314101946 --> [dbus-java-parent](../content/com/github/hypfvieh/dbus-java/README.md) | 5.1.1 :warning: [:memo:](https://github.com/hypfvieh/dbus-java/pull/279) |
| <!-- 20250314012610 --> [opentelemetry-instrumentation-api](../content/io/opentelemetry/instrumentation/README.md) | 2.14.0 :warning: |
| <!-- 20250313165409 --> [maven-lockfile](../content/io/github/chains-project/maven-lockfile/README.md) | 5.4.1 :warning: |
| <!-- 20250311103634 --> [nifi](../content/org/apache/nifi/nifi/README.md) | 2.3.0 :warning: [:memo:](https://github.com/apache/nifi/pull/9805) |
| <!-- 20250310171441 --> [axis2](../content/org/apache/axis2/README.md) | 2.0.0 :warning: [:memo:](https://github.com/apache/axis-axis2-java-core/pull/879) |
| <!-- 20250310160203 --> [syncope](../content/org/apache/syncope/README.md) | 4.0.0-M1 :warning: |
| <!-- 20250309084313 --> [jpmml-r](../content/org/jpmml/jpmml-r/README.md) | 1.7.1 :warning: |
| <!-- 20250308205707 --> [jpmml-python](../content/org/jpmml/jpmml-python/README.md) | 1.3.1 :warning: |
| <!-- 20250308192052 --> [jpmml-transpiler](../content/org/jpmml/jpmml-transpiler/README.md) | 1.4.1 :warning: |
| <!-- 20250308161859 --> [jpmml-converter](../content/org/jpmml/jpmml-converter/README.md) | 1.6.1 :warning: |
| <!-- 20250308125140 --> [jpmml-evaluator](../content/org/jpmml/jpmml-evaluator/README.md) | 1.7.2 :warning: |
| <!-- 20250303160124 --> [eforms-sdk-analyzer](../content/eu/europa/ted/eforms/eforms-sdk-analyzer/README.md) | 1.13.1 :warning: |
| <!-- 20250303122342 --> [flink-kubernetes-operator-parent](../content/org/apache/flink/flink-kubernetes-operator/README.md) | 1.11.0 :warning: |
| <!-- 20250228081848 --> [jreleaser](../content/org/jreleaser/README.md) | 1.17.0 :warning: |
| <!-- 20250227115749 --> [pulsar](../content/org/apache/pulsar/README.md) | 4.0.3 :warning: |
| <!-- 20250226101218 --> [baremaps](../content/org/apache/baremaps/README.md) | 0.8.2 :warning: [:memo:](https://github.com/apache/incubator-baremaps/pull/951) |
| <!-- 20250225165035 --> [slf4j-parent](../content/org/slf4j/README.md) | 2.1.0-alpha1 :warning: |
| <!-- 20250224172058 --> [jpmml-model](../content/org/jpmml/jpmml-model/README.md) | 1.7.2 :warning: [:memo:](https://github.com/jpmml/jpmml-model/issues/42) |
| <!-- 20250224140054 --> [sdmx-dl-parent](../content/com/github/nbbrd/sdmx-dl/README.md) | 3.0.0-beta.14 :warning: |
| <!-- 20250224085936 --> [sshd](../content/org/apache/sshd/README.md) | 2.15.0 :warning: [:memo:](https://github.com/apache/mina-sshd/pull/695) |
| <!-- 20250219102604 --> [io.wcm.handler.media](../content/io/wcm/io.wcm.handler/media/README.md) | 2.4.2 :warning: |
| <!-- 20250218094231 --> [wayang](../content/org/apache/wayang/README.md) | 1.0.0 :warning: [:memo:](https://github.com/apache/incubator-wayang/pull/503) |
| <!-- 20250217124403 --> [winrm](../content/org/sentrysoftware/winrm/README.md) | 1.1.01 :warning: |
| <!-- 20250217093704 --> [jandex-parent](../content/io/smallrye/jandex/README.md) | 3.2.7 :warning: |
| <!-- 20250216125759 --> [packager-maven-plugin](../content/org/jpmml/packager-maven-plugin/README.md) | 1.0.1 :warning: |
| <!-- 20250214204823 --> [jpmml-sparkml](../content/org/jpmml/jpmml-sparkml/README.md) | 3.1.0 :warning: |
| <!-- 20250214132638 --> [commons-vfs2](../content/org/apache/commons/commons-vfs2/README.md) | 2.10.0 :warning: |
| <!-- 20250213170218 --> [jooby](../content/io/jooby/README.md) | 3.6.1 :warning: |
| <!-- 20250213093110 --> [jdplus-main](../content/eu/europa/ec/joinup/sat/jdplus-main/README.md) | 3.4.0 :warning: |
| <!-- 20250213063710 --> [jackrabbit-oak](../content/org/apache/jackrabbit/oak/README.md) | 1.76.0 :warning: [:memo:](https://issues.apache.org/jira/browse/OAK-10662) |
| <!-- 20250207001301 --> [tika](../content/org/apache/tika/README.md) | 3.1.0 :warning: |
| <!-- 20250205204946 --> [jpmml-h2o](../content/org/jpmml/jpmml-h2o/README.md) | 1.3.0 :warning: |
| <!-- 20250205200742 --> [jpmml-statsmodels](../content/org/jpmml/jpmml-statsmodels/README.md) | 1.3.0 :warning: |
| <!-- 20250205171651 --> [jpmml-xgboost](../content/org/jpmml/jpmml-xgboost/README.md) | 1.9.0 :warning: |
| <!-- 20250205091217 --> [maven-resolver-ant-tasks](../content/org/apache/maven/resolver/maven-resolver-ant-tasks/README.md) | 1.5.2 :warning: |
| <!-- 20250204140651 --> [jdplus-sdmx](../content/com/github/nbbrd/jdplus-sdmx/README.md) | 3.3.0 :warning: |
| <!-- 20250204071457 --> [jpmml-lightgbm](../content/org/jpmml/jpmml-lightgbm/README.md) | 1.6.0 :warning: |
| <!-- 20250203233329 --> [axiom](../content/org/apache/ws/commons/axiom/README.md) | 2.0.0 :warning: |
| <!-- 20250202185956 --> [jpmml-codemodel](../content/org/jpmml/jpmml-codemodel/README.md) | 1.2.0 :warning: |
| <!-- 20250201215052 --> [ftpserver-parent](../content/org/apache/mina/ftpserver/README.md) | 1.2.1 :warning: |
| <!-- 20250201083537 --> [camel-k-runtime-project](../content/org/apache/camel/camel-k-runtime/README.md) | 3.15.2 :warning: |
| <!-- 20250131103808 --> [org.apache.sling.scripting.sightly.testing](../content/org/apache/sling/org.apache.sling.scripting.sightly.testing/README.md) | 1.0.38-1.4.0 :warning: |
| <!-- 20250130093121 --> [kubernetes-client-project](../content/io/fabric8/kubernetes-client/README.md) | 7.1.0 :warning: |
| <!-- 20250126122810 --> [org.apache.sling.xss](../content/org/apache/sling/org.apache.sling.xss/README.md) | 2.4.6 :warning: |
| <!-- 20250124102848 --> [karaf](../content/org/apache/karaf/karaf/README.md) | 4.4.7 :warning: [:memo:](https://issues.apache.org/jira/browse/KARAF-7797) |
| <!-- 20250121145905 --> [jena](../content/org/apache/jena/jena/README.md) | 5.3.0 :warning: |
| <!-- 20250117094427 --> [org.apache.sling.starter](../content/org/apache/sling/org.apache.sling.starter/README.md) | 13 :warning: |
| <!-- 20250114121312 --> [commons-daemon](../content/org/apache/commons/commons-daemon/README.md) | 1.4.1 :warning: |
| <!-- 20250111133702 --> [commons-release-plugin](../content/org/apache/commons/commons-release-plugin/README.md) | 1.9.0 :warning: |
| <!-- 20250107124852 --> [commons-beanutils2](../content/org/apache/commons/commons-beanutils2/README.md) | 2.0.0-M1 :warning: [:memo:](https://lists.apache.org/thread/5m2sq74rqyws91onxmk77jty239qtfd8) |
| <!-- 20250106163714 --> [env-config](../content/com/github/sitture/env-config/README.md) | 1.13.1 :x: |
| <!-- 20250103195806 --> [ldapchai](../content/com/github/ldapchai/README.md) | 0.8.7 :warning: |
| <!-- 20241226222731 --> [org.apache.sling.servlets.resolver](../content/org/apache/sling/org.apache.sling.servlets.resolver/README.md) | 2.11.8 :warning: |
| <!-- 20241221111725 --> [org.apache.sling.feature.launcher](../content/org/apache/sling/org.apache.sling.feature.launcher/README.md) | 1.3.2 :warning: |
| <!-- 20241220140033 --> [org.apache.sling.models.impl](../content/org/apache/sling/org.apache.sling.models.impl/README.md) | 1.7.8 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-models-impl/pull/62) |
| <!-- 20241216105905 --> [org.apache.sling.commons.log.webconsole](../content/org/apache/sling/org.apache.sling.commons.log.webconsole/README.md) | 1.0.2 :warning: |
| <!-- 20241215214119 --> [plexus-utils](../content/org/codehaus/plexus/plexus-utils/README.md) | 4.0.2 :warning: |
| <!-- 20241215170740 --> [reload4j](../content/ch/qos/reload4j/README.md) | 1.2.26 :warning: |
| <!-- 20241210081421 --> [io.wcm.handler.link](../content/io/wcm/io.wcm.handler/link/README.md) | 2.2.4 :warning: |
| <!-- 20241207223709 --> [royale-typedefs-parent](../content/org/apache/royale/typedefs/README.md) | 0.9.12 :warning: |
| <!-- 20241207223516 --> [royale-framework-parent](../content/org/apache/royale/framework/README.md) | 0.9.12 :warning: |
| <!-- 20241207221427 --> [compiler](../content/org/apache/royale/compiler/README.md) | 0.9.12 :warning: |
| <!-- 20241207202534 --> [com.io7m.cardant](../content/com/io7m/cardant/README.md) | 1.0.0-beta0001 :warning: |
| <!-- 20241204065136 --> [yupiik-tools-maven-plugin-parent](../content/io/yupiik/maven/plugin/README.md) | 1.2.5 :warning: |
| <!-- 20241202181948 --> [commons-dbcp2](../content/org/apache/commons/commons-dbcp2/README.md) | 2.13.0 :warning: |
| <!-- 20241129071420 --> [license-maven-plugin](../content/org/codehaus/mojo/license-maven-plugin/README.md) | 2.5.0 :warning: |
| <!-- 20241127152503 --> [mybatis-spring-boot](../content/org/mybatis/spring/boot/README.md) | 3.0.4 :warning: |
| <!-- 20241120023729 --> [amoro-parent](../content/org/apache/amoro/README.md) | 0.7.1-incubating :warning: |
| <!-- 20241119151133 --> [org.apache.sling.feature.cpconverter](../content/org/apache/sling/org.apache.sling.feature.cpconverter/README.md) | 1.3.8 :warning: |
| <!-- 20241114163736 --> [gwt-commons-validator](../content/de/knightsoft-net/gwt-commons-validator/README.md) | 1.9.0-1 :warning: |
| <!-- 20241114145222 --> [fediz](../content/org/apache/cxf/fediz/README.md) | 1.7.0 :warning: |
| <!-- 20241112125327 --> [coingecko-java](../content/net/osslabz/coingecko-java/README.md) | 1.2.0 :warning: |
| <!-- 20241112082354 --> [evm-abi-decoder](../content/net/osslabz/evm-abi-decode/README.md) | 0.1.0 :warning: |
| <!-- 20241106160454 --> [tomcat-authnz-spnego-ad](../content/net/sf/michael-o/tomcat/tomcat-authnz-spnego-ad/README.md) | 4.2.4 :warning: [:memo:](https://github.com/michael-o/tomcatspnegoad/issues/32) |
| <!-- 20241105103840 --> [atom-jaxb-parent](../content/fr/vidal/oss/README.md) | 2.0.0 :x: |
| <!-- 20241024173436 --> [parent](../content/org/apache/zookeeper/README.md) | 3.9.3 :warning: |
| <!-- 20241018172054 --> [org.apache.sling.commons.metrics](../content/org/apache/sling/org.apache.sling.commons.metrics/README.md) | 1.2.14 :warning: |
| <!-- 20241002073844 --> [hive](../content/org/apache/hive/README.md) | 4.0.1 :warning: [:memo:](https://issues.apache.org/jira/browse/HIVE-28186) |
| <!-- 20240930082825 --> [io.wcm.caconfig.editor.root](../content/io/wcm/io.wcm.caconfig/README.md) | 1.16.6 :warning: |
| <!-- 20240916091231 --> [io.wcm.wcm.ui.clientlibs](../content/io/wcm/io.wcm.wcm/ui/clientlibs/README.md) | 1.4.0 :warning: |
| <!-- 20240905060651 --> [org.apache.sling.scripting.core](../content/org/apache/sling/org.apache.sling.scripting.core/README.md) | 2.4.10 :warning: [:memo:](https://issues.apache.org/jira/browse/SLING-12422) |
| <!-- 20240825173904 --> [io.takari.incrementalbuild](../content/io/takari/incrementalbuild/README.md) | 1.0.3 :warning: |
| <!-- 20240818211009 --> [htmlcompressor](../content/com/github/hazendaz/htmlcompressor/README.md) | 2.0.2 :warning: |
| <!-- 20240817210045 --> [mybatis-2-spring](../content/org/mybatis/mybatis-2-spring/README.md) | 1.2.1 :warning: |
| <!-- 20240814231054 --> [commons-cli](../content/org/apache/commons/commons-cli/README.md) | 1.9.0 :warning: |
| <!-- 20240812093803 --> [commons-numbers-parent](../content/org/apache/commons/numbers/README.md) | 1.2 :warning: |
| <!-- 20240811074040 --> [openfasttrace](../content/org/itsallcode/openfasttrace/README.md) | 4.1.0 :warning: |
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
| <!-- 20240522202533 --> [com.io7m.idstore](../content/com/io7m/idstore/README.md) | 2.0.1 :warning: |
| <!-- 20240510194112 --> [com.io7m.cedarbridge](../content/com/io7m/cedarbridge/README.md) | 2.0.0 :warning: [:memo:](https://github.com/io7m-com/cedarbridge/issues/62) |
| <!-- 20240510171359 --> [com.io7m.jsx](../content/com/io7m/jsx/README.md) | 4.0.0 :warning: |
| <!-- 20240509124549 --> [paimon-shade](../content/org/apache/paimon/shade/README.md) | 0.8.0 :warning: [:memo:](https://github.com/apache/incubator-paimon-shade/pull/18) |
| <!-- 20240506065040 --> [batchee](../content/org/apache/batchee/README.md) | 2.0.0 :warning: |
| <!-- 20240503123932 --> [org.apache.sling.rewriter](../content/org/apache/sling/org.apache.sling.rewriter/README.md) | 1.4.4 :warning: [:memo:](https://github.com/apache/sling-org-apache-sling-rewriter/pull/14) |
| <!-- 20240501164724 --> [turbine-webapp-6.0](../content/org/apache/turbine/turbine-webapp-6.0/README.md) | 3.0.0 :warning: |
| <!-- 20240420172655 --> [unexepack](../content/io/github/albertus82/unexepack/README.md) | 0.3.1 :warning: |
| <!-- 20240414093609 --> [maven-scm](../content/org/apache/maven/scm/README.md) | 2.1.0 :warning: |
| <!-- 20240317040144 --> [systemds](../content/org/apache/systemds/README.md) | 3.2.0 :warning: |
| <!-- 20240312215350 --> [cdevents-sdk-java](../content/dev/cdevents/cdevents-sdk-java/README.md) | 0.3.1 :x: |
| <!-- 20240304110456 --> [jakarta.mail-api](../content/jakarta/mail/jakarta.mail-api/README.md) | 2.1.3 :warning: |
| <!-- 20240229131606 --> [angus-activation-project](../content/org/eclipse/angus/activation/README.md) | 2.0.2 :warning: |
| <!-- 20240219171831 --> [plc4x-parent](../content/org/apache/plc4x/plc4x/README.md) | 0.12.0 :x: |
| <!-- 20240126192007 --> [io.wcm.handler.richtext](../content/io/wcm/io.wcm.handler/richtext/README.md) | 2.0.0 :warning: |
| <!-- 20240122143033 --> [org.apache.sling.feature.extension.unpack](../content/org/apache/sling/org.apache.sling.feature.extension.unpack/README.md) | 0.4.0 :warning: |
| <!-- 20240118001405 --> [scimple](../content/org/apache/directory/scimple/README.md) | 1.0.0-M1 :warning: |
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
