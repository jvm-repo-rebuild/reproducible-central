Reproducible Builds for Maven Central Repository
====================================================

This project is the [Java part](https://reproducible-builds.org/docs/jvm/) of the [Reproducible Builds](https://reproducible-builds.org/) effort:

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg)](https://reproducible-builds.org/) _an independently-verifiable path from source to binary code_

--------------------------------------------------------------------------------------------------------------------------

Its objectives are to provide:
1) [**Tools and methods allowing to verify that Java builds are reproducible**](doc/TOOLS.md)
2) [**A list of reproducible releases published to Maven Central**](#rebuild-detailed-results)<br>
   <!-- BEGIN GENERATED INTRO -->
   rebuilding **3548 releases** of **640 projects**:
   - **2814** releases are confirmed **fully reproducible** (100% reproducible artifacts :white_check_mark:),
   - 734 releases are only partially reproducible (contain some unreproducible artifacts :warning:)
   - on 640 projects, 539 have at least one fully reproducible release, 101 have none

<!-- END GENERATED INTRO -->

## Rebuild Detailed Results

<!-- BEGIN GENERATED RESULTS TABLE -->
| [Central Repository](https://central.sonatype.com/) groupId | artifactId(s) | versions | [result](https://reproducible-builds.org/docs/jvm/): reproducible? |
| ----------------- | --------------- | --------- | -------- |
| commons-io | [*](content/commons-io/README.md) | 2 | 2 :white_check_mark: |
| biz.aQute.bnd | [bnd-plugin-parent](content/biz/aQute/bnd/plugins/README.md) | 9 | 9 :white_check_mark: |
| ch.qos.logback | [logback-parent](content/ch/qos/logback/README.md) | 23 | 16 :white_check_mark: / 7 :warning: |
| ch.qos.reload4j | [reload4j](content/ch/qos/reload4j/README.md) | 8 | 1 :white_check_mark: / 7 :warning: |
| ch.qos.logback.db | [logback-parent-db](content/ch/qos/logback/db/README.md) | 1 | 1 :warning: |
| com.flowlogix | [flowlogix](content/com/flowlogix/README.md) | 13 | 9 :white_check_mark: / 4 :warning: |
| com.adobe.acs | [acs-aem-commons](content/com/adobe/acs/aem-commons/README.md) | 3 | 3 :warning: |
| com.cognite.units | [units-catalog](content/com/cognite/units/units-catalog/README.md) | 4 | 1 :white_check_mark: / 3 :warning: |
| com.corgibytes | [mrm](content/com/corgibytes/mrm/README.md) | 1 | 1 :white_check_mark: |
| | [versions-maven-plugin](content/com/corgibytes/versions-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| com.fasterxml | [oss-parent](content/com/fasterxml/oss-parent/README.md) | 14 | 14 :white_check_mark: |
| com.fasterxml.uuid | [java-uuid-generator](content/com/fasterxml/uuid/README.md) | 3 | 1 :white_check_mark: / 2 :warning: |
| com.fasterxml.woodstox | [woodstox-core](content/com/fasterxml/woodstox/README.md) | 2 | 2 :warning: |
| com.fasterxml.jackson.core | [jackson-annotations](content/com/fasterxml/jackson/annotations/README.md) | 10 | 4 :white_check_mark: / 6 :warning: |
| | [jackson-core](content/com/fasterxml/jackson/core/README.md) | 11 | 8 :white_check_mark: / 3 :warning: |
| | [jackson-databind](content/com/fasterxml/jackson/databind/README.md) | 11 | 4 :white_check_mark: / 7 :warning: |
| com.fasterxml.jackson | [jackson-bom](content/com/fasterxml/jackson/jackson-bom/README.md) | 4 | 4 :white_check_mark: |
| | [jackson-parent](content/com/fasterxml/jackson/jackson-parent/README.md) | 3 | 3 :white_check_mark: |
| com.fasterxml.jackson.jr | [jackson-jr-parent](content/com/fasterxml/jackson/jr/README.md) | 9 | 4 :white_check_mark: / 5 :warning: |
| com.fasterxml.jackson.dataformat | [jackson-dataformat-xml](content/com/fasterxml/jackson/dataformat/jackson-dataformat-xml/README.md) | 5 | 5 :white_check_mark: |
| | [jackson-dataformats-binary](content/com/fasterxml/jackson/dataformat/jackson-dataformats-binary/README.md) | 4 | 3 :white_check_mark: / 1 :warning: |
| | [jackson-dataformats-text](content/com/fasterxml/jackson/dataformat/jackson-dataformats-text/README.md) | 4 | 4 :white_check_mark: |
| com.fasterxml.jackson.datatype | [jackson-datatype-joda](content/com/fasterxml/jackson/datatype/jackson-datatype-joda/README.md) | 4 | 4 :white_check_mark: |
| | [jackson-datatypes-collections](content/com/fasterxml/jackson/datatype/jackson-datatypes-collections/README.md) | 4 | 4 :white_check_mark: |
| | [jackson-datatypes-misc-parent](content/com/fasterxml/jackson/datatype/jackson-datatypes-misc-parent/README.md) | 4 | 4 :white_check_mark: |
| com.github.ldapchai | [ldapchai](content/com/github/ldapchai/README.md) | 6 | 1 :white_check_mark: / 5 :warning: |
| com.github.psi-probe | [psi-probe](content/com/github/psi-probe/README.md) | 12 | 8 :white_check_mark: / 4 :warning: |
| com.github.adangel.liquibase.ext | [liquibase-percona](content/com/github/adangel/liquibase/ext/liquibase-percona/README.md) | 1 | 1 :white_check_mark: |
| com.github.hazendaz.7zip | [7zip](content/com/github/hazendaz/7zip/README.md) | 2 | 2 :white_check_mark: |
| com.github.hazendaz | [displaytag-doc](content/com/github/hazendaz/displaytag-doc/README.md) | 7 | 5 :white_check_mark: / 2 :warning: |
| | [javabean-tester](content/com/github/hazendaz/javabean-tester/README.md) | 11 | 9 :white_check_mark: / 2 :warning: |
| com.github.hazendaz.maven | [coveralls-maven-plugin](content/com/github/hazendaz/maven/coveralls-maven-plugin/README.md) | 3 | 3 :white_check_mark: |
| | [directory-maven-plugin](content/com/github/hazendaz/maven/directory-maven-plugin/README.md) | 3 | 3 :white_check_mark: |
| | [htmlcompressor-maven-plugin](content/com/github/hazendaz/maven/htmlcompressor-maven-plugin/README.md) | 7 | 7 :white_check_mark: |
| | [makeself-maven-plugin](content/com/github/hazendaz/maven/makeself-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [whitespace-maven-plugin](content/com/github/hazendaz/maven/whitespace-maven-plugin/README.md) | 4 | 1 :white_check_mark: / 3 :warning: |
| | [yuicompressor-maven-plugin](content/com/github/hazendaz/maven/yuicompressor-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| com.github.marschall | [jakarta-jms-adapter](content/com/github/marschall/jakarta-jms-adapter/README.md) | 4 | 2 :white_check_mark: / 2 :warning: |
| | [jfr-servlet](content/com/github/marschall/jfr-servlet/README.md) | 2 | 2 :white_check_mark: |
| com.github.package-url | [packageurl-java](content/com/github/package-url/packageurl-java/README.md) | 5 | 5 :white_check_mark: |
| com.github.spotbugs | [spotbugs-maven-plugin](content/com/github/spotbugs/spotbugs-maven-plugin/README.md) | 19 | 19 :white_check_mark: |
| com.github.veithen.alta | [alta-maven-plugin](content/com/github/veithen/alta/README.md) | 1 | 1 :white_check_mark: |
| com.github.veithen.checkt | [checkt](content/com/github/veithen/checkt/README.md) | 1 | 1 :white_check_mark: |
| com.github.veithen.cosmos | [cosmos](content/com/github/veithen/cosmos/README.md) | 1 | 1 :warning: |
| com.github.veithen.daemon | [daemon](content/com/github/veithen/daemon/README.md) | 8 | 8 :white_check_mark: |
| com.github.veithen | [jrel](content/com/github/veithen/jrel/README.md) | 1 | 1 :white_check_mark: |
| | [parent](content/com/github/veithen/parent/README.md) | 10 | 9 :white_check_mark: / 1 :warning: |
| com.github.veithen.phos | [phos](content/com/github/veithen/phos/README.md) | 1 | 1 :white_check_mark: |
| com.github.veithen.maven | [eclipse-settings-maven-plugin](content/com/github/veithen/maven/eclipse-settings-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [hermetic-maven-plugin](content/com/github/veithen/maven/hermetic-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [jacoco-report-maven-plugin](content/com/github/veithen/maven/jacoco-report-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [java-format-maven-plugin](content/com/github/veithen/maven/java-format-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [p2-maven-connector](content/com/github/veithen/maven/p2-maven-connector/README.md) | 1 | 1 :white_check_mark: |
| | [resolver-proxy-maven-plugin](content/com/github/veithen/maven/resolver-proxy-maven-plugin/README.md) | 4 | 4 :white_check_mark: |
| | [wsimport-maven-plugin](content/com/github/veithen/maven/wsimport-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [xjc-maven-plugin](content/com/github/veithen/maven/xjc-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| com.google.guava | [guava](content/com/google/guava/README.md) | 4 | 4 :warning: |
| com.homeofthewizard | [vault-maven-plugin](content/com/homeofthewizard/vault-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| com.innoq | [junit5-logging-extension](content/com/innoq/junit5-logging-extension/README.md) | 2 | 1 :white_check_mark: / 1 :warning: |
| com.intellectualsites.arkitektonika | [Arkitektonika-Client](content/com/intellectualsites/arkitektonika/Arkitektonika-Client/README.md) | 1 | 1 :white_check_mark: |
| com.intellectualsites.bom | [bom-newest](content/com/intellectualsites/bom/bom-newest/README.md) | 1 | 1 :white_check_mark: |
| com.intellectualsites.fastasyncvoxelsniper | [fastasyncvoxelsniper](content/com/intellectualsites/fastasyncvoxelsniper/fastasyncvoxelsniper/README.md) | 1 | 1 :white_check_mark: |
| com.intellectualsites.informative-annotations | [informative-annotations](content/com/intellectualsites/informative-annotations/informative-annotations/README.md) | 1 | 1 :white_check_mark: |
| com.intellectualsites.paster | [Paster](content/com/intellectualsites/paster/Paster/README.md) | 1 | 1 :white_check_mark: |
| com.io7m | [*.anethum](content/com/io7m/anethum/README.md) | 5 | 5 :white_check_mark: |
| | [*.blackthorne](content/com/io7m/blackthorne/README.md) | 11 | 7 :white_check_mark: / 4 :warning: |
| | [*.calino](content/com/io7m/calino/README.md) | 1 | 1 :white_check_mark: |
| | [*.canonmill](content/com/io7m/canonmill/README.md) | 7 | 7 :white_check_mark: |
| | [*.cedarbridge](content/com/io7m/cedarbridge/README.md) | 2 | 2 :warning: |
| | [*.certusine](content/com/io7m/certusine/README.md) | 2 | 2 :warning: |
| | [*.chione](content/com/io7m/chione/README.md) | 1 | 1 :warning: |
| | [*.claypot](content/com/io7m/claypot/README.md) | 2 | 2 :white_check_mark: |
| | [*.cxbutton](content/com/io7m/cxbutton/README.md) | 3 | 3 :white_check_mark: |
| | [*.digal](content/com/io7m/digal/README.md) | 5 | 5 :white_check_mark: |
| | [*.dixmont](content/com/io7m/dixmont/README.md) | 3 | 3 :white_check_mark: |
| | [*.ervilla](content/com/io7m/ervilla/README.md) | 7 | 7 :white_check_mark: |
| | [*.genevan](content/com/io7m/genevan/README.md) | 2 | 2 :white_check_mark: |
| | [*.gtyrell](content/com/io7m/gtyrell/README.md) | 4 | 4 :white_check_mark: |
| | [*.hibiscus](content/com/io7m/hibiscus/README.md) | 9 | 9 :white_check_mark: |
| | [*.idstore](content/com/io7m/idstore/README.md) | 2 | 2 :warning: |
| | [*.ieee754b16](content/com/io7m/ieee754b16/README.md) | 1 | 1 :white_check_mark: |
| | [*.jade](content/com/io7m/jade/README.md) | 2 | 1 :white_check_mark: / 1 :warning: |
| | [*.jaffirm](content/com/io7m/jaffirm/README.md) | 3 | 3 :white_check_mark: |
| | [*.jattribute](content/com/io7m/jattribute/README.md) | 1 | 1 :white_check_mark: |
| | [*.jbssio](content/com/io7m/jbssio/README.md) | 8 | 7 :white_check_mark: / 1 :warning: |
| | [*.jcolorspace](content/com/io7m/jcolorspace/README.md) | 3 | 3 :white_check_mark: |
| | [*.jcoords](content/com/io7m/jcoords/README.md) | 1 | 1 :white_check_mark: |
| | [*.jdeferthrow](content/com/io7m/jdeferthrow/README.md) | 3 | 3 :white_check_mark: |
| | [*.jdownload](content/com/io7m/jdownload/README.md) | 1 | 1 :white_check_mark: |
| | [*.jequality](content/com/io7m/jequality/README.md) | 1 | 1 :white_check_mark: |
| | [*.jeucreader](content/com/io7m/jeucreader/README.md) | 1 | 1 :white_check_mark: |
| | [*.jfsm](content/com/io7m/jfsm/README.md) | 1 | 1 :white_check_mark: |
| | [*.jintegers](content/com/io7m/jintegers/README.md) | 1 | 1 :white_check_mark: |
| | [*.jmulticlose](content/com/io7m/jmulticlose/README.md) | 4 | 4 :white_check_mark: |
| | [*.jmurmur](content/com/io7m/jmurmur/README.md) | 1 | 1 :white_check_mark: |
| | [*.jnfp](content/com/io7m/jnfp/README.md) | 1 | 1 :white_check_mark: |
| | [*.jnoisetype](content/com/io7m/jnoisetype/README.md) | 3 | 3 :white_check_mark: |
| | [*.jodist](content/com/io7m/jodist/README.md) | 1 | 1 :white_check_mark: |
| | [*.jorchard](content/com/io7m/jorchard/README.md) | 2 | 2 :white_check_mark: |
| | [*.jpita](content/com/io7m/jpita/README.md) | 1 | 1 :white_check_mark: |
| | [*.jproperties](content/com/io7m/jproperties/README.md) | 3 | 3 :white_check_mark: |
| | [*.jptbox](content/com/io7m/jptbox/README.md) | 1 | 1 :white_check_mark: |
| | [*.jpuddle](content/com/io7m/jpuddle/README.md) | 1 | 1 :white_check_mark: |
| | [*.jqpage](content/com/io7m/jqpage/README.md) | 3 | 3 :white_check_mark: |
| | [*.jranges](content/com/io7m/jranges/README.md) | 1 | 1 :white_check_mark: |
| | [*.jregions](content/com/io7m/jregions/README.md) | 2 | 2 :white_check_mark: |
| | [*.jsamplebuffer](content/com/io7m/jsamplebuffer/README.md) | 4 | 3 :white_check_mark: / 1 :warning: |
| | [*.jserial](content/com/io7m/jserial/README.md) | 1 | 1 :white_check_mark: |
| | [*.jsx](content/com/io7m/jsx/README.md) | 6 | 6 :white_check_mark: |
| | [*.junreachable](content/com/io7m/junreachable/README.md) | 1 | 1 :white_check_mark: |
| | [*.junsigned](content/com/io7m/junsigned/README.md) | 1 | 1 :white_check_mark: |
| | [*.jvindicator](content/com/io7m/jvindicator/README.md) | 2 | 2 :white_check_mark: |
| | [*.jwheatsheaf](content/com/io7m/jwheatsheaf/README.md) | 4 | 3 :white_check_mark: / 1 :warning: |
| | [*.jxe](content/com/io7m/jxe/README.md) | 2 | 2 :white_check_mark: |
| | [*.jxtrand](content/com/io7m/jxtrand/README.md) | 3 | 3 :white_check_mark: |
| | [*.lanark](content/com/io7m/lanark/README.md) | 3 | 3 :white_check_mark: |
| | [*.looseleaf](content/com/io7m/looseleaf/README.md) | 6 | 6 :white_check_mark: |
| | [*.medrina](content/com/io7m/medrina/README.md) | 6 | 6 :white_check_mark: |
| | [*.mesquida](content/com/io7m/mesquida/README.md) | 2 | 2 :white_check_mark: |
| | [*.mime2045](content/com/io7m/mime2045/README.md) | 2 | 2 :white_check_mark: |
| | [*.percentpass](content/com/io7m/percentpass/README.md) | 3 | 3 :white_check_mark: |
| | [*.primogenitor](content/com/io7m/primogenitor/README.md) | 33 | 33 :white_check_mark: |
| | [*.quarrel](content/com/io7m/quarrel/README.md) | 10 | 10 :white_check_mark: |
| | [*.quixote](content/com/io7m/quixote/README.md) | 5 | 4 :white_check_mark: / 1 :warning: |
| | [*.repetoir](content/com/io7m/repetoir/README.md) | 2 | 2 :white_check_mark: |
| | [*.scando](content/com/io7m/scando/README.md) | 1 | 1 :white_check_mark: |
| | [*.streamtime](content/com/io7m/streamtime/README.md) | 1 | 1 :white_check_mark: |
| | [*.sunburst](content/com/io7m/sunburst/README.md) | 1 | 1 :warning: |
| | [*.tabla](content/com/io7m/tabla/README.md) | 2 | 2 :white_check_mark: |
| | [*.taskrecorder](content/com/io7m/taskrecorder/README.md) | 2 | 2 :white_check_mark: |
| | [*.timehack6435126](content/com/io7m/timehack6435126/README.md) | 1 | 1 :white_check_mark: |
| | [*.trasco](content/com/io7m/trasco/README.md) | 11 | 11 :white_check_mark: |
| | [*.verdant](content/com/io7m/verdant/README.md) | 2 | 2 :white_check_mark: |
| | [*.verona](content/com/io7m/verona/README.md) | 4 | 4 :white_check_mark: |
| | [*.wendover](content/com/io7m/wendover/README.md) | 5 | 5 :white_check_mark: |
| | [*.xoanon](content/com/io7m/xoanon/README.md) | 4 | 4 :white_check_mark: |
| | [*.xstructural](content/com/io7m/xstructural/README.md) | 6 | 6 :white_check_mark: |
| | [*.zelador](content/com/io7m/zelador/README.md) | 1 | 1 :white_check_mark: |
| com.newmediaworks | [nmw-oss-parent](content/com/newmediaworks/nmw-oss-parent/README.md) | 3 | 3 :white_check_mark: |
| com.ongres.stringprep | [parent](content/com/ongres/stringprep/README.md) | 1 | 1 :warning: |
| com.scalapenos | [stamina_2.11](content/com/scalapenos/stamina/README.md) | 2 | 2 :white_check_mark: |
| com.semanticcms | [semanticcms-all](content/com/semanticcms/semanticcms-all/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-all-book](content/com/semanticcms/semanticcms-all-book/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-bom](content/com/semanticcms/semanticcms-bom/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-bom-book](content/com/semanticcms/semanticcms-bom-book/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-core-all](content/com/semanticcms/semanticcms-core-all/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-core-all-book](content/com/semanticcms/semanticcms-core-all-book/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-core-bom](content/com/semanticcms/semanticcms-core-bom/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-core-bom-book](content/com/semanticcms/semanticcms-core-bom-book/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-core-breadcrumblist-json-ld](content/com/semanticcms/semanticcms-core-breadcrumblist-json-ld/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-core-breadcrumblist-json-ld-book](content/com/semanticcms/semanticcms-core-breadcrumblist-json-ld-book/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-core-docs](content/com/semanticcms/semanticcms-core-docs/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-core-docs-book](content/com/semanticcms/semanticcms-core-docs-book/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-news-all](content/com/semanticcms/semanticcms-news-all/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-news-all-book](content/com/semanticcms/semanticcms-news-all-book/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-parent](content/com/semanticcms/semanticcms-parent/README.md) | 1 | 1 :white_check_mark: |
| | [semanticcms-parent-book](content/com/semanticcms/semanticcms-parent-book/README.md) | 7 | 7 :white_check_mark: |
| | [semanticcms-tag-reference](content/com/semanticcms/semanticcms-tag-reference/README.md) | 1 | 1 :warning: |
| | [semanticcms-tag-reference-book](content/com/semanticcms/semanticcms-tag-reference-book/README.md) | 1 | 1 :white_check_mark: |
| com.spotify.fmt | [fmt-maven-plugin](content/com/spotify/fmt-maven-plugin/README.md) | 6 | 6 :white_check_mark: |
| com.spotify | [github-client](content/com/spotify/github-client/README.md) | 35 | 34 :white_check_mark: / 1 :warning: |
| com.taobao.arthas | [arthas-all](content/com/taobao/arthas/README.md) | 14 | 14 :warning: |
| com.vladsch.flexmark | [flexmark-java](content/com/vladsch/flexmark/flexmark-java/README.md) | 4 | 4 :white_check_mark: |
| commons-logging | [*](content/commons-logging/commons-logging/README.md) | 2 | 2 :white_check_mark: |
| de.jflex | [jflex-parent](content/de/jflex/README.md) | 1 | 1 :white_check_mark: |
| de.gematik.pki.gemlibpki | [gemLibPki](content/de/gematik/pki/gemlibpki/README.md) | 2 | 2 :warning: |
| de.unentscheidbar | [migratedb](content/de/unentscheidbar/migratedb/README.md) | 4 | 3 :white_check_mark: / 1 :warning: |
| dev.langchain4j | [langchain4j](content/dev/langchain4j/README.md) | 7 | 5 :white_check_mark: / 2 :warning: |
| dev.cdevents | [cdevents-sdk-java](content/dev/cdevents/cdevents-sdk-java/README.md) | 2 | 2 :warning: |
| dev.notmyfault.serverlib | [ServerLib](content/dev/notmyfault/serverlib/ServerLib/README.md) | 1 | 1 :white_check_mark: |
| dev.sigstore | [sigstore-maven-plugin](content/dev/sigstore/sigstore-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| dk.mada.style | [mada-style-gradle](content/dk/mada/style/mada-style-gradle/README.md) | 1 | 1 :white_check_mark: |
| eu.europa.ted.eforms | [eforms-core-java](content/eu/europa/ted/eforms/eforms-core-java/README.md) | 6 | 5 :white_check_mark: / 1 :warning: |
| | [eforms-sdk](content/eu/europa/ted/eforms/eforms-sdk/README.md) | 18 | 13 :white_check_mark: / 5 :warning: |
| | [efx-toolkit-java](content/eu/europa/ted/eforms/efx-toolkit-java/README.md) | 3 | 3 :warning: |
| eu.maveniverse.maven.mima | [mima](content/eu/maveniverse/maven/mima/README.md) | 32 | 30 :white_check_mark: / 2 :warning: |
| eu.maveniverse.maven.toolbox | [toolbox](content/eu/maveniverse/maven/toolbox/README.md) | 10 | 10 :white_check_mark: |
| eu.maveniverse.maven.mase | [mase](content/eu/maveniverse/maven/mase/mase/README.md) | 2 | 2 :white_check_mark: |
| fr.inria.gforge.spoon | [spoon-core](content/fr/inria/gforge/spoon/spoon-core/README.md) | 8 | 4 :white_check_mark: / 4 :warning: |
| fr.marcwrobel | [jbanking](content/fr/marcwrobel/jbanking/README.md) | 2 | 2 :white_check_mark: |
| fr.vidal.oss | [atom-jaxb](content/fr/vidal/oss/README.md) | 2 | 1 :white_check_mark: / 1 :warning: |
| io.jooby | [jooby](content/io/jooby/README.md) | 2 | 2 :warning: |
| io.liftwizard | [liftwizard](content/io/liftwizard/README.md) | 49 | 48 :white_check_mark: / 1 :warning: |
| io.cucumber | [ci-environment](content/io/cucumber/ci-environment/README.md) | 2 | 2 :white_check_mark: |
| | [cucumber-expressions](content/io/cucumber/cucumber-expressions/README.md) | 7 | 7 :white_check_mark: |
| | [cucumber-jvm](content/io/cucumber/cucumber-jvm/README.md) | 14 | 14 :white_check_mark: |
| | [gherkin](content/io/cucumber/gherkin/README.md) | 8 | 8 :white_check_mark: |
| | [gherkin-utils](content/io/cucumber/gherkin-utils/README.md) | 6 | 6 :white_check_mark: |
| | [html-formatter](content/io/cucumber/html-formatter/README.md) | 1 | 1 :warning: |
| | [junit-xml-formatter](content/io/cucumber/junit-xml-formatter/README.md) | 5 | 5 :white_check_mark: |
| | [messages](content/io/cucumber/messages/README.md) | 7 | 7 :white_check_mark: |
| | [tag-expressions](content/io/cucumber/tag-expressions/README.md) | 9 | 9 :white_check_mark: |
| io.dropwizard | [dropwizard-project](content/io/dropwizard/core/README.md) | 74 | 69 :white_check_mark: / 5 :warning: |
| io.dropwizard.metrics | [metrics-parent](content/io/dropwizard/metrics/README.md) | 41 | 20 :white_check_mark: / 21 :warning: |
| io.dropwizard.metrics5 | [metrics-parent](content/io/dropwizard/metrics5/README.md) | 13 | 6 :white_check_mark: / 7 :warning: |
| io.dwpbank.movewp3 | [microservice-security-autoconfiguration](content/io/dwpbank/movewp3/microservice-security-autoconfiguration/README.md) | 1 | 1 :warning: |
| io.fabric8 | [docker-maven-plugin](content/io/fabric8/docker-maven-plugin/README.md) | 21 | 18 :white_check_mark: / 3 :warning: |
| | [kubernetes-client-project](content/io/fabric8/kubernetes-client/README.md) | 10 | 10 :warning: |
| io.github.git-commit-id | [git-commit-id-maven-plugin](content/io/github/git-commit-id/README.md) | 5 | 2 :white_check_mark: / 3 :warning: |
| io.github.albertus82 | [jface-utils](content/io/github/albertus82/jface-utils/README.md) | 9 | 9 :white_check_mark: |
| | [unexepack](content/io/github/albertus82/unexepack/README.md) | 3 | 3 :warning: |
| io.github.chains-project | [maven-lockfile](content/io/github/chains-project/maven-lockfile/README.md) | 5 | 5 :warning: |
| io.github.derkrischan | [jpdftest](content/io/github/derkrischan/jpdftest/README.md) | 4 | 4 :white_check_mark: |
| io.github.hboutemy | [sigstore-maven-plugin](content/io/github/hboutemy/sigstore-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| io.github.sebastian-toepfer.json-schema | [json-schema](content/io/github/sebastian-toepfer/json-schema/json-schema/README.md) | 2 | 2 :white_check_mark: |
| io.github.sebastian-toepfer.json.rpc | [json-printable-maven-plugin](content/io/github/sebastian-toepfer/json/rpc/json-printable-maven-plugin/README.md) | 5 | 5 :white_check_mark: |
| io.github.shanqiang-sq | [jstream](content/io/github/shanqiang-sq/jstream/README.md) | 28 | 28 :white_check_mark: |
| io.github.zlika | [reproducible-build-maven-plugin](content/io/github/zlika/reproducible-build-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| io.jstach | [jstachio](content/io/jstach/jstachio/README.md) | 12 | 12 :white_check_mark: |
| io.jstach.pistachio | [pistachio-maven-parent](content/io/jstach/pistachio/pistachio-maven-parent/README.md) | 1 | 1 :white_check_mark: |
| io.micronaut.build | [micronaut-maven-plugin](content/io/micronaut/build/micronaut-maven-plugin/README.md) | 34 | 34 :white_check_mark: |
| io.micronaut.maven | [micronaut-maven-plugin](content/io/micronaut/maven/micronaut-maven-plugin/README.md) | 27 | 27 :white_check_mark: |
| io.opentelemetry.instrumentation | [opentelemetry-instrumentation-api](content/io/opentelemetry/instrumentation/README.md) | 2 | 2 :warning: |
| io.opentelemetry | [opentelemetry-sdk](content/io/opentelemetry/java/README.md) | 1 | 1 :warning: |
| io.repaint.maven | [tiles-maven-plugin](content/io/repaint/maven/tiles-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| io.smallrye | [jandex-parent](content/io/smallrye/jandex/README.md) | 6 | 6 :warning: |
| io.wcm | [*.caconfig.editor.parent](content/io/wcm/io.wcm.caconfig/README.md) | 4 | 4 :warning: |
| | [*.parent_toplevel](content/io/wcm/tooling/README.md) | 17 | 17 :white_check_mark: |
| | [*.handler.commons](content/io/wcm/io.wcm.handler/commons/README.md) | 1 | 1 :white_check_mark: |
| | [*.handler.link](content/io/wcm/io.wcm.handler/link/README.md) | 5 | 5 :warning: |
| | [*.handler.media](content/io/wcm/io.wcm.handler/media/README.md) | 8 | 5 :white_check_mark: / 3 :warning: |
| | [*.handler.richtext](content/io/wcm/io.wcm.handler/richtext/README.md) | 5 | 5 :warning: |
| | [*.wcm.commons](content/io/wcm/io.wcm.wcm/commons/README.md) | 5 | 2 :white_check_mark: / 3 :warning: |
| | [*.wcm.parsys](content/io/wcm/io.wcm.wcm/parsys/README.md) | 4 | 3 :white_check_mark: / 1 :warning: |
| | [*.wcm.ui.clientlibs](content/io/wcm/io.wcm.wcm/ui/clientlibs/README.md) | 4 | 3 :white_check_mark: / 1 :warning: |
| | [*.wcm.ui.granite](content/io/wcm/io.wcm.wcm/ui/granite/README.md) | 8 | 4 :white_check_mark: / 4 :warning: |
| io.wcm.maven.plugins | [cq-maven-plugin](content/io/wcm/maven/plugins/cq-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [nodejs-maven-plugin](content/io/wcm/maven/plugins/nodejs-maven-plugin/README.md) | 3 | 1 :white_check_mark: / 2 :warning: |
| | [sling-initial-content-transform-maven-plugin](content/io/wcm/maven/plugins/sling-initial-content-transform-maven-plugin/README.md) | 3 | 3 :white_check_mark: |
| io.wcm.tooling.commons | [*.content-package-builder](content/io/wcm/tooling/commons/content-package-builder/README.md) | 5 | 4 :white_check_mark: / 1 :warning: |
| | [*.crx-packmgr-helper](content/io/wcm/tooling/commons/crx-packmgr-helper/README.md) | 7 | 7 :white_check_mark: |
| jakarta.persistence | [*-api](content/jakarta/persistence/jakarta.persistence-api/README.md) | 3 | 3 :white_check_mark: |
| jakarta.servlet | [*-api](content/jakarta/servlet/jakarta.servlet-api/README.md) | 2 | 2 :warning: |
| net.bytebuddy | [byte-buddy-parent](content/net/bytebuddy/README.md) | 21 | 19 :white_check_mark: / 2 :warning: |
| net.jsign | [jsign](content/net/jsign/README.md) | 3 | 3 :warning: |
| net.bzzt | [reproducible-builds-jvm-stripper](content/net/bzzt/reproducible-builds-jvm-stripper/README.md) | 1 | 1 :white_check_mark: |
| net.nicoulaj.maven.plugins | [checksum-maven-plugin](content/net/nicoulaj/maven/plugins/checksum-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| net.revelc.code | [impsort-maven-plugin](content/net/revelc/code/impsort-maven-plugin/README.md) | 3 | 3 :white_check_mark: |
| net.sf.michael-o | [michael-o-parent](content/net/sf/michael-o/michael-o-parent/README.md) | 2 | 2 :white_check_mark: |
| net.sf.michael-o.tomcat | [tomcat-authnz-spnego-ad](content/net/sf/michael-o/tomcat/tomcat-authnz-spnego-ad/README.md) | 3 | 3 :white_check_mark: |
| net.sourceforge.pmd | [pmd](content/net/sourceforge/pmd/README.md) | 36 | 32 :white_check_mark: / 4 :warning: |
| | [pmd-build-tools-config](content/net/sourceforge/pmd/pmd-build-tools-config/README.md) | 7 | 7 :white_check_mark: |
| nl.basjes.energy | [energy-parent](content/nl/basjes/energy/README.md) | 1 | 1 :white_check_mark: |
| nl.basjes.codeowners | [codeowners-parent](content/nl/basjes/codeowners/codeowners-parent/README.md) | 16 | 16 :white_check_mark: |
| nl.basjes.maven.release | [conventional-commits-version-policy](content/nl/basjes/maven/release/conventional-commits-version-policy/README.md) | 6 | 6 :white_check_mark: |
| nl.basjes.parse.httpdlog | [httpdlog-parser](content/nl/basjes/parse/httpdlog/httpdlog-parser/README.md) | 3 | 3 :white_check_mark: |
| nl.basjes.parse.useragent | [yauaa](content/nl/basjes/parse/useragent/yauaa/README.md) | 15 | 14 :white_check_mark: / 1 :warning: |
| nl.hsac | [hsac-fitnesse-fixtures](content/nl/hsac/hsac-fitnesse-fixtures/README.md) | 83 | 66 :white_check_mark: / 17 :warning: |
| | [hsac-fitnesse-pdf](content/nl/hsac/hsac-fitnesse-pdf/README.md) | 5 | 2 :white_check_mark: / 3 :warning: |
| org.jdbi.internal | [jdbi3-root](content/org/jdbi/README.md) | 2 | 2 :warning: |
| org.jline | [jline](content/org/jline/README.md) | 9 | 8 :white_check_mark: / 1 :warning: |
| org.jreleaser | [jreleaser](content/org/jreleaser/README.md) | 7 | 1 :white_check_mark: / 6 :warning: |
| org.phoebus | [parent](content/org/phoebus/README.md) | 1 | 1 :warning: |
| org.quickperf | [quick-perf](content/org/quickperf/README.md) | 3 | 3 :white_check_mark: |
| org.slf4j | [slf4j-parent](content/org/slf4j/README.md) | 13 | 6 :white_check_mark: / 7 :warning: |
| org.alluxio | [alluxio-parent](content/org/alluxio/alluxio/README.md) | 9 | 8 :white_check_mark: / 1 :warning: |
| org.antlr | [antlr4-master](content/org/antlr/antlr4/README.md) | 3 | 1 :white_check_mark: / 2 :warning: |
| org.apache.accumulo | [accumulo](content/org/apache/accumulo/README.md) | 7 | 3 :white_check_mark: / 4 :warning: |
| org.apache.activemq | [activemq-parent](content/org/apache/activemq/README.md) | 14 | 7 :white_check_mark: / 7 :warning: |
| org.apache.any23 | [apache-any23](content/org/apache/any23/README.md) | 1 | 1 :warning: |
| org.apache | [apache](content/org/apache/apache/README.md) | 10 | 9 :white_check_mark: / 1 :warning: |
| org.apache.avro | [avro-toplevel](content/org/apache/avro/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| org.apache.axis2 | [axis2](content/org/apache/axis2/README.md) | 1 | 1 :warning: |
| org.apache.batchee | [batchee](content/org/apache/batchee/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| org.apache.drill | [drill-root](content/org/apache/drill/README.md) | 3 | 3 :warning: |
| org.apache.dubbo | [dubbo](content/org/apache/dubbo/README.md) | 21 | 8 :white_check_mark: / 13 :warning: |
| org.apache.helix | [helix](content/org/apache/helix/README.md) | 4 | 4 :warning: |
| org.apache.hive | [hive](content/org/apache/hive/README.md) | 2 | 2 :warning: |
| org.apache.isis | [isis-parent](content/org/apache/isis/README.md) | 1 | 1 :warning: |
| org.apache.jdo | [jdo](content/org/apache/jdo/README.md) | 2 | 2 :warning: |
| org.apache.johnzon | [johnzon](content/org/apache/johnzon/README.md) | 2 | 1 :white_check_mark: / 1 :warning: |
| org.apache.jspwiki | [jspwiki-builder](content/org/apache/jspwiki/README.md) | 7 | 1 :white_check_mark: / 6 :warning: |
| org.apache.mina | [mina-parent](content/org/apache/mina/README.md) | 5 | 2 :white_check_mark: / 3 :warning: |
| org.apache.orc | [orc](content/org/apache/orc/README.md) | 11 | 8 :white_check_mark: / 3 :warning: |
| org.apache.paimon | [paimon-parent](content/org/apache/paimon/README.md) | 1 | 1 :warning: |
| org.apache.pulsar | [pulsar](content/org/apache/pulsar/README.md) | 2 | 2 :warning: |
| org.apache.rat | [apache-rat-project](content/org/apache/rat/README.md) | 4 | 4 :white_check_mark: |
| org.apache.ratis | [ratis](content/org/apache/ratis/README.md) | 3 | 3 :warning: |
| org.apache.shiro | [shiro-root](content/org/apache/shiro/README.md) | 8 | 1 :white_check_mark: / 7 :warning: |
| org.apache.sis | [parent](content/org/apache/sis/README.md) | 1 | 1 :warning: |
| org.apache.sshd | [sshd](content/org/apache/sshd/README.md) | 6 | 6 :warning: |
| org.apache.struts | [struts2-parent](content/org/apache/struts/README.md) | 10 | 4 :white_check_mark: / 6 :warning: |
| org.apache.synapse | [Apache-Synapse](content/org/apache/synapse/README.md) | 1 | 1 :warning: |
| org.apache.syncope | [syncope](content/org/apache/syncope/README.md) | 6 | 6 :warning: |
| org.apache.systemds | [systemds](content/org/apache/systemds/README.md) | 1 | 1 :warning: |
| org.apache.tika | [tika](content/org/apache/tika/README.md) | 6 | 6 :warning: |
| org.apache.wayang | [wayang](content/org/apache/wayang/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| org.apache.wss4j | [wss4j](content/org/apache/wss4j/README.md) | 8 | 7 :white_check_mark: / 1 :warning: |
| org.apache.zookeeper | [parent](content/org/apache/zookeeper/README.md) | 4 | 4 :warning: |
| org.apache.activemq | [artemis-pom](content/org/apache/activemq/artemis/README.md) | 5 | 5 :warning: |
| org.apache.aries | [*.cdi](content/org/apache/aries/cdi/README.md) | 2 | 1 :white_check_mark: / 1 :warning: |
| org.apache.aries.jax | [*.rs](content/org/apache/aries/jax-rs/README.md) | 1 | 1 :white_check_mark: |
| org.apache.camel | [camel](content/org/apache/camel/camel/README.md) | 7 | 7 :warning: |
| org.apache.camel.k | [camel-k-runtime-project](content/org/apache/camel/camel-k-runtime/README.md) | 5 | 5 :warning: |
| org.apache.bcel | [bcel](content/org/apache/commons/bcel/README.md) | 5 | 5 :warning: |
| org.apache.commons | [commons-exec](content/org/apache/commons/commons-exec/README.md) | 1 | 1 :white_check_mark: |
| | [commons-release-plugin](content/org/apache/commons/commons-release-plugin/README.md) | 1 | 1 :warning: |
| | [commons-compress](content/org/apache/commons/compress/README.md) | 6 | 2 :white_check_mark: / 4 :warning: |
| | [commons-csv](content/org/apache/commons/csv/README.md) | 1 | 1 :white_check_mark: |
| commons-net | [*](content/org/apache/commons/net/README.md) | 2 | 2 :warning: |
| org.apache.commons | [commons-numbers-parent](content/org/apache/commons/numbers/README.md) | 1 | 1 :white_check_mark: |
| | [commons-parent](content/org/apache/commons/parent/README.md) | 17 | 16 :white_check_mark: / 1 :warning: |
| | [commons-rng-parent](content/org/apache/commons/rng/README.md) | 1 | 1 :white_check_mark: |
| | [commons-statistics-parent](content/org/apache/commons/statistics/README.md) | 1 | 1 :warning: |
| org.apache.cxf.build-utils | [cxf-build-utils](content/org/apache/cxf/cxf-build-utils/README.md) | 1 | 1 :white_check_mark: |
| org.apache.cxf.fediz | [fediz](content/org/apache/cxf/fediz/README.md) | 2 | 2 :warning: |
| org.apache.cxf.xjc-utils | [xjc-utils](content/org/apache/cxf/xjc-utils/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| org.apache.directory.api | [api-parent](content/org/apache/directory/api/README.md) | 6 | 6 :white_check_mark: |
| org.apache.directory.project | [project](content/org/apache/directory/project/README.md) | 3 | 3 :white_check_mark: |
| org.apache.directory.scimple | [scimple](content/org/apache/directory/scimple/README.md) | 1 | 1 :warning: |
| org.apache.felix | [*.feature](content/org/apache/felix/features/README.md) | 5 | 5 :white_check_mark: |
| | [maven-bundle-plugin](content/org/apache/felix/maven-bundle-plugin/README.md) | 7 | 7 :white_check_mark: |
| | [*.healthcheck.core](content/org/apache/felix/org.apache.felix.healthcheck.core/README.md) | 2 | 2 :warning: |
| | [felix-parent](content/org/apache/felix/pom/README.md) | 2 | 2 :white_check_mark: |
| | [*.http.parent](content/org/apache/felix/http/parent/README.md) | 1 | 1 :white_check_mark: |
| org.apache.httpcomponents | [httpcomponents-parent](content/org/apache/httpcomponents/parent/README.md) | 2 | 2 :white_check_mark: |
| org.apache.jackrabbit.vault | [jackrabbit-filevault](content/org/apache/jackrabbit/filevault/README.md) | 12 | 4 :white_check_mark: / 8 :warning: |
| org.apache.jackrabbit | [filevault-package-maven-plugin](content/org/apache/jackrabbit/filevault-package-maven-plugin/README.md) | 8 | 8 :white_check_mark: |
| | [jackrabbit-parent](content/org/apache/jackrabbit/jackrabbit/README.md) | 9 | 1 :white_check_mark: / 8 :warning: |
| | [jackrabbit-oak](content/org/apache/jackrabbit/oak/README.md) | 2 | 2 :warning: |
| org.apache.jena | [jena](content/org/apache/jena/jena/README.md) | 9 | 9 :warning: |
| org.apache.karaf | [decanter](content/org/apache/karaf/decanter/README.md) | 2 | 2 :warning: |
| | [karaf](content/org/apache/karaf/karaf/README.md) | 8 | 8 :warning: |
| org.apache.karaf.minho | [minho](content/org/apache/karaf/minho/README.md) | 1 | 1 :white_check_mark: |
| org.apache.logging | [logging-parent](content/org/apache/logging/parent/README.md) | 14 | 13 :white_check_mark: / 1 :warning: |
| org.apache.logging.log4j | [log4j](content/org/apache/logging/log4j/log4j/README.md) | 8 | 6 :white_check_mark: / 2 :warning: |
| | [log4j-jmx-gui](content/org/apache/logging/log4j/log4j-jmx-gui/README.md) | 1 | 1 :white_check_mark: |
| | [log4j-tools-bom](content/org/apache/logging/log4j/tools/README.md) | 8 | 8 :white_check_mark: |
| | [log4j-transform-bom](content/org/apache/logging/log4j/transform/README.md) | 1 | 1 :white_check_mark: |
| org.apache.maven.archetype | [maven-archetype](content/org/apache/maven/archetype/README.md) | 2 | 2 :white_check_mark: |
| org.apache.maven.enforcer | [enforcer](content/org/apache/maven/enforcer/README.md) | 6 | 6 :white_check_mark: |
| org.apache.maven.indexer | [maven-indexer](content/org/apache/maven/indexer/README.md) | 12 | 10 :white_check_mark: / 2 :warning: |
| org.apache.maven.jxr | [jxr](content/org/apache/maven/jxr/README.md) | 5 | 5 :white_check_mark: |
| org.apache.maven | [maven](content/org/apache/maven/maven/README.md) | 25 | 22 :white_check_mark: / 3 :warning: |
| | [maven-parent](content/org/apache/maven/parent/README.md) | 9 | 6 :white_check_mark: / 3 :warning: |
| org.apache.maven.scm | [maven-scm](content/org/apache/maven/scm/README.md) | 10 | 9 :white_check_mark: / 1 :warning: |
| org.apache.maven.surefire | [surefire](content/org/apache/maven/surefire/README.md) | 12 | 8 :white_check_mark: / 4 :warning: |
| org.apache.maven.doxia | [doxia](content/org/apache/maven/doxia/doxia/README.md) | 14 | 13 :white_check_mark: / 1 :warning: |
| | [doxia-converter](content/org/apache/maven/doxia/doxia-converter/README.md) | 1 | 1 :white_check_mark: |
| | [doxia-sitetools](content/org/apache/maven/doxia/doxia-sitetools/README.md) | 17 | 17 :white_check_mark: |
| org.apache.maven.extensions | [maven-build-cache-extension](content/org/apache/maven/extensions/maven-build-cache-extension/README.md) | 3 | 3 :white_check_mark: |
| org.apache.maven.plugin-testing | [maven-plugin-testing](content/org/apache/maven/plugin-testing/maven-plugin-testing/README.md) | 2 | 2 :white_check_mark: |
| org.apache.maven.plugin-tools | [maven-plugin-tools](content/org/apache/maven/plugin-tools/maven-plugin-tools/README.md) | 12 | 12 :white_check_mark: |
| org.apache.maven.plugins | [maven-antrun-plugin](content/org/apache/maven/plugins/maven-antrun-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [maven-artifact-plugin](content/org/apache/maven/plugins/maven-artifact-plugin/README.md) | 8 | 8 :white_check_mark: |
| | [maven-assembly-plugin](content/org/apache/maven/plugins/maven-assembly-plugin/README.md) | 8 | 8 :white_check_mark: |
| | [maven-checkstyle-plugin](content/org/apache/maven/plugins/maven-checkstyle-plugin/README.md) | 7 | 7 :white_check_mark: |
| | [maven-clean-plugin](content/org/apache/maven/plugins/maven-clean-plugin/README.md) | 3 | 3 :white_check_mark: |
| | [maven-compiler-plugin](content/org/apache/maven/plugins/maven-compiler-plugin/README.md) | 7 | 7 :white_check_mark: |
| | [maven-dependency-plugin](content/org/apache/maven/plugins/maven-dependency-plugin/README.md) | 7 | 7 :white_check_mark: |
| | [maven-deploy-plugin](content/org/apache/maven/plugins/maven-deploy-plugin/README.md) | 5 | 5 :white_check_mark: |
| | [maven-docck-plugin](content/org/apache/maven/plugins/maven-docck-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [maven-ear-plugin](content/org/apache/maven/plugins/maven-ear-plugin/README.md) | 3 | 3 :white_check_mark: |
| | [maven-ejb-plugin](content/org/apache/maven/plugins/maven-ejb-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [maven-gpg-plugin](content/org/apache/maven/plugins/maven-gpg-plugin/README.md) | 7 | 5 :white_check_mark: / 2 :warning: |
| | [maven-help-plugin](content/org/apache/maven/plugins/maven-help-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [maven-install-plugin](content/org/apache/maven/plugins/maven-install-plugin/README.md) | 5 | 5 :white_check_mark: |
| | [maven-invoker-plugin](content/org/apache/maven/plugins/maven-invoker-plugin/README.md) | 7 | 7 :white_check_mark: |
| | [maven-jar-plugin](content/org/apache/maven/plugins/maven-jar-plugin/README.md) | 5 | 5 :white_check_mark: |
| | [maven-javadoc-plugin](content/org/apache/maven/plugins/maven-javadoc-plugin/README.md) | 10 | 6 :white_check_mark: / 4 :warning: |
| | [maven-jlink-plugin](content/org/apache/maven/plugins/maven-jlink-plugin/README.md) | 3 | 3 :white_check_mark: |
| | [maven-pdf-plugin](content/org/apache/maven/plugins/maven-pdf-plugin/README.md) | 3 | 3 :white_check_mark: |
| | [maven-pmd-plugin](content/org/apache/maven/plugins/maven-pmd-plugin/README.md) | 10 | 10 :white_check_mark: |
| | [maven-project-info-reports-plugin](content/org/apache/maven/plugins/maven-project-info-reports-plugin/README.md) | 13 | 12 :white_check_mark: / 1 :warning: |
| | [maven-rar-plugin](content/org/apache/maven/plugins/maven-rar-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [maven-release-plugin](content/org/apache/maven/plugins/maven-release-plugin/README.md) | 6 | 6 :white_check_mark: |
| | [maven-remote-resources-plugin](content/org/apache/maven/plugins/maven-remote-resources-plugin/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| | [maven-resources-plugin](content/org/apache/maven/plugins/maven-resources-plugin/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| | [maven-scm-publish-plugin](content/org/apache/maven/plugins/maven-scm-publish-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [maven-scripting-plugin](content/org/apache/maven/plugins/maven-scripting-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [maven-shade-plugin](content/org/apache/maven/plugins/maven-shade-plugin/README.md) | 10 | 10 :white_check_mark: |
| | [maven-site-plugin](content/org/apache/maven/plugins/maven-site-plugin/README.md) | 19 | 17 :white_check_mark: / 2 :warning: |
| | [maven-source-plugin](content/org/apache/maven/plugins/maven-source-plugin/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| | [maven-toolchains-plugin](content/org/apache/maven/plugins/maven-toolchains-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [maven-war-plugin](content/org/apache/maven/plugins/maven-war-plugin/README.md) | 4 | 4 :white_check_mark: |
| | [maven-wrapper-plugin](content/org/apache/maven/plugins/maven-wrapper-plugin/README.md) | 7 | 6 :white_check_mark: / 1 :warning: |
| org.apache.maven.reporting | [maven-reporting-api](content/org/apache/maven/reporting/maven-reporting-api/README.md) | 13 | 13 :white_check_mark: |
| | [maven-reporting-exec](content/org/apache/maven/reporting/maven-reporting-exec/README.md) | 15 | 15 :white_check_mark: |
| | [maven-reporting-impl](content/org/apache/maven/reporting/maven-reporting-impl/README.md) | 16 | 16 :white_check_mark: |
| org.apache.maven.resolver | [maven-resolver](content/org/apache/maven/resolver/maven-resolver/README.md) | 39 | 37 :white_check_mark: / 2 :warning: |
| | [maven-resolver-ant-tasks](content/org/apache/maven/resolver/maven-resolver-ant-tasks/README.md) | 5 | 5 :white_check_mark: |
| org.apache.maven | [maven-archiver](content/org/apache/maven/shared/archiver/README.md) | 5 | 5 :white_check_mark: |
| org.apache.maven.shared | [file-management](content/org/apache/maven/shared/file-management/README.md) | 1 | 1 :white_check_mark: |
| | [maven-artifact-transfer](content/org/apache/maven/shared/maven-artifact-transfer/README.md) | 1 | 1 :warning: |
| | [maven-common-artifact-filters](content/org/apache/maven/shared/maven-common-artifact-filters/README.md) | 5 | 5 :white_check_mark: |
| | [maven-dependency-analyzer](content/org/apache/maven/shared/maven-dependency-analyzer/README.md) | 6 | 6 :white_check_mark: |
| | [maven-dependency-tree](content/org/apache/maven/shared/maven-dependency-tree/README.md) | 4 | 4 :white_check_mark: |
| | [maven-filtering](content/org/apache/maven/shared/maven-filtering/README.md) | 4 | 3 :white_check_mark: / 1 :warning: |
| | [maven-invoker](content/org/apache/maven/shared/maven-invoker/README.md) | 2 | 2 :white_check_mark: |
| | [maven-script-interpreter](content/org/apache/maven/shared/maven-script-interpreter/README.md) | 3 | 3 :white_check_mark: |
| | [maven-shared-resources](content/org/apache/maven/shared/maven-shared-resources/README.md) | 3 | 3 :white_check_mark: |
| | [maven-shared-utils](content/org/apache/maven/shared/maven-shared-utils/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| | [maven-verifier](content/org/apache/maven/shared/maven-verifier/README.md) | 4 | 4 :white_check_mark: |
| org.apache.maven.skins | [maven-fluido-skin](content/org/apache/maven/skins/fluido/README.md) | 12 | 9 :white_check_mark: / 3 :warning: |
| org.apache.maven.wagon | [wagon](content/org/apache/maven/wagon/wagon/README.md) | 8 | 8 :white_check_mark: |
| org.apache.ftpserver | [ftpserver-parent](content/org/apache/mina/ftpserver/README.md) | 3 | 3 :warning: |
| org.apache.nifi | [nifi](content/org/apache/nifi/nifi/README.md) | 8 | 8 :warning: |
| | [nifi-nar-maven-plugin](content/org/apache/nifi/nifi-nar-maven-plugin/README.md) | 5 | 5 :white_check_mark: |
| org.apache.paimon | [paimon-shade](content/org/apache/paimon/shade/README.md) | 1 | 1 :warning: |
| org.apache.plc4x | [plc4x-parent](content/org/apache/plc4x/plc4x/README.md) | 3 | 3 :warning: |
| org.apache.plc4x.plugins | [plc4x-code-generation](content/org/apache/plc4x/plc4x-code-generation/README.md) | 2 | 2 :white_check_mark: |
| | [plc4x-code-generaton](content/org/apache/plc4x/plc4x-code-generaton/README.md) | 1 | 1 :white_check_mark: |
| | [plc4x-site-skin](content/org/apache/plc4x/plc4x-site-skin/README.md) | 1 | 1 :white_check_mark: |
| org.apache.qpid | [qpid-jms-parent](content/org/apache/qpid/jms/README.md) | 9 | 9 :white_check_mark: |
| | [proton-j-parent](content/org/apache/qpid/proton-j/README.md) | 2 | 2 :white_check_mark: |
| | [protonj2-parent](content/org/apache/qpid/protonj2/README.md) | 12 | 11 :white_check_mark: / 1 :warning: |
| org.apache.royale.compiler | [compiler](content/org/apache/royale/compiler/README.md) | 2 | 2 :warning: |
| org.apache.santuario | [xmlsec](content/org/apache/santuario/xmlsec/README.md) | 8 | 2 :white_check_mark: / 6 :warning: |
| org.apache.servicemix.tooling | [depends-maven-plugin](content/org/apache/servicemix/tooling/depends-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| org.apache.sling | [feature-launcher-maven-plugin](content/org/apache/sling/feature-launcher-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [htl-maven-plugin](content/org/apache/sling/htl-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [jspc-maven-plugin](content/org/apache/sling/jspc-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [maven-enforcer-rules](content/org/apache/sling/maven-enforcer-rules/README.md) | 3 | 3 :white_check_mark: |
| | [*.adapter](content/org/apache/sling/org.apache.sling.adapter/README.md) | 1 | 1 :white_check_mark: |
| | [*.api](content/org/apache/sling/org.apache.sling.api/README.md) | 9 | 9 :white_check_mark: |
| | [*.auth.core](content/org/apache/sling/org.apache.sling.auth.core/README.md) | 5 | 5 :white_check_mark: |
| | [*.bundleresource.impl](content/org/apache/sling/org.apache.sling.bundleresource.impl/README.md) | 1 | 1 :white_check_mark: |
| | [*.caconfig.api](content/org/apache/sling/org.apache.sling.caconfig.api/README.md) | 1 | 1 :white_check_mark: |
| | [*.caconfig.impl](content/org/apache/sling/org.apache.sling.caconfig.impl/README.md) | 1 | 1 :white_check_mark: |
| | [*.caconfig.spi](content/org/apache/sling/org.apache.sling.caconfig.spi/README.md) | 1 | 1 :white_check_mark: |
| | [*.cms](content/org/apache/sling/org.apache.sling.cms/README.md) | 1 | 1 :warning: |
| | [*.commons.content.analyzing](content/org/apache/sling/org.apache.sling.commons.content.analyzing/README.md) | 1 | 1 :white_check_mark: |
| | [*.commons.content.processing](content/org/apache/sling/org.apache.sling.commons.content.processing/README.md) | 1 | 1 :white_check_mark: |
| | [*.commons.crypto](content/org/apache/sling/org.apache.sling.commons.crypto/README.md) | 1 | 1 :warning: |
| | [*.commons.johnzon](content/org/apache/sling/org.apache.sling.commons.johnzon/README.md) | 7 | 5 :white_check_mark: / 2 :warning: |
| | [*.commons.log](content/org/apache/sling/org.apache.sling.commons.log/README.md) | 4 | 1 :white_check_mark: / 3 :warning: |
| | [*.commons.messaging](content/org/apache/sling/org.apache.sling.commons.messaging/README.md) | 1 | 1 :white_check_mark: |
| | [*.commons.messaging.mail](content/org/apache/sling/org.apache.sling.commons.messaging.mail/README.md) | 1 | 1 :warning: |
| | [*.commons.metrics](content/org/apache/sling/org.apache.sling.commons.metrics/README.md) | 2 | 2 :warning: |
| | [*.distribution.journal](content/org/apache/sling/org.apache.sling.distribution.journal/README.md) | 3 | 3 :white_check_mark: |
| | [*.distribution.journal.kafka](content/org/apache/sling/org.apache.sling.distribution.journal.kafka/README.md) | 1 | 1 :white_check_mark: |
| | [*.distribution.journal.messages](content/org/apache/sling/org.apache.sling.distribution.journal.messages/README.md) | 3 | 3 :white_check_mark: |
| | [*.engine](content/org/apache/sling/org.apache.sling.engine/README.md) | 16 | 16 :white_check_mark: |
| | [*.event](content/org/apache/sling/org.apache.sling.event/README.md) | 10 | 1 :white_check_mark: / 9 :warning: |
| | [*.event.api](content/org/apache/sling/org.apache.sling.event.api/README.md) | 1 | 1 :white_check_mark: |
| | [*.feature](content/org/apache/sling/org.apache.sling.feature/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| | [*.feature.analyser](content/org/apache/sling/org.apache.sling.feature.analyser/README.md) | 7 | 4 :white_check_mark: / 3 :warning: |
| | [*.feature.cpconverter](content/org/apache/sling/org.apache.sling.feature.cpconverter/README.md) | 7 | 7 :warning: |
| | [*.feature.diff](content/org/apache/sling/org.apache.sling.feature.diff/README.md) | 1 | 1 :white_check_mark: |
| | [*.feature.extension.apiregions](content/org/apache/sling/org.apache.sling.feature.extension.apiregions/README.md) | 9 | 9 :white_check_mark: |
| | [*.feature.extension.unpack](content/org/apache/sling/org.apache.sling.feature.extension.unpack/README.md) | 1 | 1 :warning: |
| | [*.feature.launcher](content/org/apache/sling/org.apache.sling.feature.launcher/README.md) | 5 | 2 :white_check_mark: / 3 :warning: |
| | [*.fsresource](content/org/apache/sling/org.apache.sling.fsresource/README.md) | 1 | 1 :white_check_mark: |
| | [*.hc.support](content/org/apache/sling/org.apache.sling.hc.support/README.md) | 2 | 2 :warning: |
| | [*.i18n](content/org/apache/sling/org.apache.sling.i18n/README.md) | 2 | 2 :warning: |
| | [*.installer.console](content/org/apache/sling/org.apache.sling.installer.console/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| | [*.installer.core](content/org/apache/sling/org.apache.sling.installer.core/README.md) | 5 | 1 :white_check_mark: / 4 :warning: |
| | [*.installer.factory.configuration](content/org/apache/sling/org.apache.sling.installer.factory.configuration/README.md) | 6 | 2 :white_check_mark: / 4 :warning: |
| | [*.installer.factory.packages](content/org/apache/sling/org.apache.sling.installer.factory.packages/README.md) | 2 | 2 :warning: |
| | [*.installer.hc](content/org/apache/sling/org.apache.sling.installer.hc/README.md) | 1 | 1 :white_check_mark: |
| | [*.installer.provider.file](content/org/apache/sling/org.apache.sling.installer.provider.file/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| | [*.installer.provider.jcr](content/org/apache/sling/org.apache.sling.installer.provider.jcr/README.md) | 2 | 1 :white_check_mark: / 1 :warning: |
| | [*.javax.activation](content/org/apache/sling/org.apache.sling.javax.activation/README.md) | 2 | 1 :white_check_mark: / 1 :warning: |
| | [*.jcr.contentloader](content/org/apache/sling/org.apache.sling.jcr.contentloader/README.md) | 4 | 4 :warning: |
| | [*.jcr.jackrabbit.accessmanager](content/org/apache/sling/org.apache.sling.jcr.jackrabbit.accessmanager/README.md) | 4 | 2 :white_check_mark: / 2 :warning: |
| | [*.jcr.jackrabbit.usermanager](content/org/apache/sling/org.apache.sling.jcr.jackrabbit.usermanager/README.md) | 9 | 2 :white_check_mark: / 7 :warning: |
| | [*.jcr.maintenance](content/org/apache/sling/org.apache.sling.jcr.maintenance/README.md) | 2 | 2 :white_check_mark: |
| | [*.jcr.oak.server](content/org/apache/sling/org.apache.sling.jcr.oak.server/README.md) | 2 | 1 :white_check_mark: / 1 :warning: |
| | [*.jcr.packageinit](content/org/apache/sling/org.apache.sling.jcr.packageinit/README.md) | 1 | 1 :white_check_mark: |
| | [*.jcr.resource](content/org/apache/sling/org.apache.sling.jcr.resource/README.md) | 4 | 4 :white_check_mark: |
| | [*.jcr.resourcesecurity](content/org/apache/sling/org.apache.sling.jcr.resourcesecurity/README.md) | 1 | 1 :white_check_mark: |
| | [*.launchpad.test-services](content/org/apache/sling/org.apache.sling.launchpad.test-services/README.md) | 1 | 1 :white_check_mark: |
| | [*.models.api](content/org/apache/sling/org.apache.sling.models.api/README.md) | 3 | 3 :white_check_mark: |
| | [*.models.caconfig](content/org/apache/sling/org.apache.sling.models.caconfig/README.md) | 2 | 2 :white_check_mark: |
| | [*.models.impl](content/org/apache/sling/org.apache.sling.models.impl/README.md) | 6 | 5 :white_check_mark: / 1 :warning: |
| | [*.models.jacksonexporter](content/org/apache/sling/org.apache.sling.models.jacksonexporter/README.md) | 3 | 3 :white_check_mark: |
| | [*.models.validation-impl](content/org/apache/sling/org.apache.sling.models.validation-impl/README.md) | 2 | 2 :white_check_mark: |
| | [*.pipes](content/org/apache/sling/org.apache.sling.pipes/README.md) | 5 | 5 :warning: |
| | [*.providertype.bnd-plugin](content/org/apache/sling/org.apache.sling.providertype.bnd-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [*.query](content/org/apache/sling/org.apache.sling.query/README.md) | 1 | 1 :white_check_mark: |
| | [*.repoinit.parser](content/org/apache/sling/org.apache.sling.repoinit.parser/README.md) | 4 | 4 :white_check_mark: |
| | [*.resource.observation.annotations](content/org/apache/sling/org.apache.sling.resource.observation.annotations/README.md) | 1 | 1 :white_check_mark: |
| | [*.resourceaccesssecurity](content/org/apache/sling/org.apache.sling.resourceaccesssecurity/README.md) | 1 | 1 :white_check_mark: |
| | [*.resourcemerger](content/org/apache/sling/org.apache.sling.resourcemerger/README.md) | 3 | 3 :white_check_mark: |
| | [*.resourceresolver](content/org/apache/sling/org.apache.sling.resourceresolver/README.md) | 10 | 10 :white_check_mark: |
| | [*.rewriter](content/org/apache/sling/org.apache.sling.rewriter/README.md) | 6 | 6 :warning: |
| | [*.scripting.core](content/org/apache/sling/org.apache.sling.scripting.core/README.md) | 4 | 4 :warning: |
| | [*.scripting.sightly](content/org/apache/sling/org.apache.sling.scripting.sightly/README.md) | 6 | 6 :white_check_mark: |
| | [*.scripting.sightly.repl](content/org/apache/sling/org.apache.sling.scripting.sightly.repl/README.md) | 1 | 1 :white_check_mark: |
| | [*.scripting.sightly.testing](content/org/apache/sling/org.apache.sling.scripting.sightly.testing/README.md) | 1 | 1 :warning: |
| | [*.scripting.sightly.testing-content](content/org/apache/sling/org.apache.sling.scripting.sightly.testing-content/README.md) | 1 | 1 :white_check_mark: |
| | [*.scripting.spi](content/org/apache/sling/org.apache.sling.scripting.spi/README.md) | 1 | 1 :white_check_mark: |
| | [*.security](content/org/apache/sling/org.apache.sling.security/README.md) | 3 | 3 :white_check_mark: |
| | [*.servlets.annotations](content/org/apache/sling/org.apache.sling.servlets.annotations/README.md) | 1 | 1 :white_check_mark: |
| | [*.servlets.post](content/org/apache/sling/org.apache.sling.servlets.post/README.md) | 3 | 1 :white_check_mark: / 2 :warning: |
| | [*.servlets.resolver](content/org/apache/sling/org.apache.sling.servlets.resolver/README.md) | 12 | 12 :warning: |
| | [*.settings](content/org/apache/sling/org.apache.sling.settings/README.md) | 1 | 1 :white_check_mark: |
| | [*.sitemap](content/org/apache/sling/org.apache.sling.sitemap/README.md) | 2 | 2 :white_check_mark: |
| | [*.starter](content/org/apache/sling/org.apache.sling.starter/README.md) | 1 | 1 :warning: |
| | [*.starter.content](content/org/apache/sling/org.apache.sling.starter.content/README.md) | 3 | 3 :white_check_mark: |
| | [*.tenant](content/org/apache/sling/org.apache.sling.tenant/README.md) | 2 | 2 :white_check_mark: |
| | [*.testing.caconfig-mock-plugin](content/org/apache/sling/org.apache.sling.testing.caconfig-mock-plugin/README.md) | 7 | 7 :white_check_mark: |
| | [*.testing.clients](content/org/apache/sling/org.apache.sling.testing.clients/README.md) | 10 | 10 :white_check_mark: |
| | [*.testing.jcr-mock](content/org/apache/sling/org.apache.sling.testing.jcr-mock/README.md) | 9 | 9 :white_check_mark: |
| | [*.testing.osgi-mock](content/org/apache/sling/org.apache.sling.testing.osgi-mock/README.md) | 8 | 8 :white_check_mark: |
| | [*.testing.resourceresolver-mock](content/org/apache/sling/org.apache.sling.testing.resourceresolver-mock/README.md) | 9 | 8 :white_check_mark: / 1 :warning: |
| | [*.testing.sling-mock](content/org/apache/sling/org.apache.sling.testing.sling-mock/README.md) | 13 | 13 :white_check_mark: |
| | [*.testing.sling-mock-oak](content/org/apache/sling/org.apache.sling.testing.sling-mock-oak/README.md) | 8 | 8 :white_check_mark: |
| | [*.tooling.support.install](content/org/apache/sling/org.apache.sling.tooling.support.install/README.md) | 1 | 1 :white_check_mark: |
| | [*.tooling.support.source](content/org/apache/sling/org.apache.sling.tooling.support.source/README.md) | 1 | 1 :white_check_mark: |
| | [*.xss](content/org/apache/sling/org.apache.sling.xss/README.md) | 6 | 5 :white_check_mark: / 1 :warning: |
| | [scriptingbundle-maven-plugin](content/org/apache/sling/scriptingbundle-maven-plugin/README.md) | 3 | 3 :warning: |
| | [slingfeature-maven-plugin](content/org/apache/sling/slingfeature-maven-plugin/README.md) | 13 | 9 :white_check_mark: / 4 :warning: |
| org.apache.tomee | [jakartaee-api](content/org/apache/tomee/jakartaee-api/README.md) | 4 | 3 :white_check_mark: / 1 :warning: |
| org.apache.turbine | [turbine-webapp-6.0](content/org/apache/turbine/turbine-webapp-6.0/README.md) | 1 | 1 :warning: |
| org.apache.ws.commons.axiom | [axiom](content/org/apache/ws/commons/axiom/README.md) | 1 | 1 :warning: |
| org.apache.ws.xmlschema | [xmlschema](content/org/apache/ws/xmlschema/xmlschema/README.md) | 1 | 1 :white_check_mark: |
| org.chabala.brick | [brick-control-lab](content/org/chabala/brick/brick-control-lab/README.md) | 1 | 1 :white_check_mark: |
| org.codehaus.modello | [modello](content/org/codehaus/modello/README.md) | 6 | 5 :white_check_mark: / 1 :warning: |
| org.codehaus.mojo | [animal-sniffer-parent](content/org/codehaus/mojo/animal-sniffer/README.md) | 4 | 4 :white_check_mark: |
| | [aspectj-maven-plugin](content/org/codehaus/mojo/aspectj-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [build-helper-maven-plugin](content/org/codehaus/mojo/build-helper-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [buildnumber-maven-plugin](content/org/codehaus/mojo/buildnumber-maven-plugin/README.md) | 2 | 2 :white_check_mark: |
| | [buildplan-maven-plugin](content/org/codehaus/mojo/buildplan-maven-plugin/README.md) | 4 | 4 :white_check_mark: |
| | [cassandra-maven-plugin](content/org/codehaus/mojo/cassandra-maven-plugin/README.md) | 3 | 3 :white_check_mark: |
| | [exec-maven-plugin](content/org/codehaus/mojo/exec-maven-plugin/README.md) | 3 | 3 :white_check_mark: |
| | [extra-enforcer-rules](content/org/codehaus/mojo/extra-enforcer-rules/README.md) | 8 | 8 :white_check_mark: |
| | [flatten-maven-plugin](content/org/codehaus/mojo/flatten-maven-plugin/README.md) | 6 | 3 :white_check_mark: / 3 :warning: |
| | [jaxb2-maven-plugin](content/org/codehaus/mojo/jaxb2-maven-plugin/README.md) | 2 | 1 :white_check_mark: / 1 :warning: |
| | [l10n-maven-plugin](content/org/codehaus/mojo/l10n-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [license-maven-plugin](content/org/codehaus/mojo/license-maven-plugin/README.md) | 5 | 4 :white_check_mark: / 1 :warning: |
| | [mojo-parent](content/org/codehaus/mojo/mojo-parent/README.md) | 20 | 20 :white_check_mark: |
| | [mrm](content/org/codehaus/mojo/mrm/README.md) | 4 | 4 :white_check_mark: |
| | [native-maven-plugin](content/org/codehaus/mojo/native/README.md) | 1 | 1 :white_check_mark: |
| | [properties-maven-plugin](content/org/codehaus/mojo/properties-maven-plugin/README.md) | 3 | 3 :white_check_mark: |
| | [taglist-maven-plugin](content/org/codehaus/mojo/taglist-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [tidy-maven-plugin](content/org/codehaus/mojo/tidy-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| | [versions-maven-plugin](content/org/codehaus/mojo/versions-maven-plugin/README.md) | 13 | 13 :white_check_mark: |
| | [wagon-maven-plugin](content/org/codehaus/mojo/wagon-maven-plugin/README.md) | 2 | 1 :white_check_mark: / 1 :warning: |
| | [xml-maven-plugin](content/org/codehaus/mojo/xml-maven-plugin/README.md) | 1 | 1 :warning: |
| org.codehaus.plexus | [plexus-archiver](content/org/codehaus/plexus/plexus-archiver/README.md) | 19 | 18 :white_check_mark: / 1 :warning: |
| | [plexus-cipher](content/org/codehaus/plexus/plexus-cipher/README.md) | 2 | 2 :white_check_mark: |
| | [plexus-classworlds](content/org/codehaus/plexus/plexus-classworlds/README.md) | 2 | 2 :white_check_mark: |
| | [plexus-cli](content/org/codehaus/plexus/plexus-cli/README.md) | 1 | 1 :white_check_mark: |
| | [plexus-compiler](content/org/codehaus/plexus/plexus-compiler/README.md) | 14 | 12 :white_check_mark: / 2 :warning: |
| | [plexus-components](content/org/codehaus/plexus/plexus-components/README.md) | 8 | 7 :white_check_mark: / 1 :warning: |
| | [plexus-digest](content/org/codehaus/plexus/plexus-digest/README.md) | 1 | 1 :white_check_mark: |
| | [plexus-interactivity](content/org/codehaus/plexus/plexus-interactivity/README.md) | 3 | 3 :white_check_mark: |
| | [plexus-interpolation](content/org/codehaus/plexus/plexus-interpolation/README.md) | 1 | 1 :white_check_mark: |
| | [plexus-io](content/org/codehaus/plexus/plexus-io/README.md) | 5 | 5 :white_check_mark: |
| | [plexus-languages](content/org/codehaus/plexus/plexus-languages/README.md) | 7 | 2 :white_check_mark: / 5 :warning: |
| | [plexus](content/org/codehaus/plexus/plexus-pom/README.md) | 15 | 14 :white_check_mark: / 1 :warning: |
| | [plexus-resources](content/org/codehaus/plexus/plexus-resources/README.md) | 1 | 1 :white_check_mark: |
| | [plexus-testing](content/org/codehaus/plexus/plexus-testing/README.md) | 3 | 3 :white_check_mark: |
| | [plexus-utils](content/org/codehaus/plexus/plexus-utils/README.md) | 7 | 5 :white_check_mark: / 2 :warning: |
| | [plexus-velocity](content/org/codehaus/plexus/plexus-velocity/README.md) | 3 | 3 :white_check_mark: |
| | [plexus-xml](content/org/codehaus/plexus/plexus-xml/README.md) | 5 | 5 :white_check_mark: |
| org.complate | [complate-core](content/org/complate/java/README.md) | 3 | 3 :white_check_mark: |
| | [complate-spring-mvc](content/org/complate/spring/README.md) | 2 | 2 :white_check_mark: |
| org.cyclonedx | [cyclonedx-core-java](content/org/cyclonedx/cyclonedx-core-java/README.md) | 32 | 32 :white_check_mark: |
| | [cyclonedx-maven-plugin](content/org/cyclonedx/cyclonedx-maven-plugin/README.md) | 24 | 24 :white_check_mark: |
| org.eclipse.jkube | [jkube](content/org/eclipse/jkube/README.md) | 23 | 23 :white_check_mark: |
| org.eclipse.transformer | [*.parent](content/org/eclipse/transformer/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| org.eclipse.jetty | [jetty-project](content/org/eclipse/jetty/jetty-project/README.md) | 7 | 2 :white_check_mark: / 5 :warning: |
| org.finos.legend.engine | [legend-engine](content/org/finos/legend/engine/README.md) | 1 | 1 :warning: |
| org.fusesource.jansi | [jansi](content/org/fusesource/jansi/jansi/README.md) | 9 | 5 :white_check_mark: / 4 :warning: |
| org.glassfish.hk2 | [hk2-parent](content/org/glassfish/hk2/README.md) | 6 | 5 :white_check_mark: / 1 :warning: |
| org.glassfish.main | [glassfish-parent](content/org/glassfish/main/README.md) | 9 | 9 :warning: |
| org.glassfish.build | [glassfishbuild-maven-plugin](content/org/glassfish/build/glassfishbuild-maven-plugin/README.md) | 1 | 1 :white_check_mark: |
| org.jpmml | [jpmml-python](content/org/jpmml/jpmml-python/README.md) | 1 | 1 :warning: |
| | [jpmml-sklearn](content/org/jpmml/jpmml-sklearn/README.md) | 4 | 4 :white_check_mark: |
| | [jpmml-statsmodels](content/org/jpmml/jpmml-statsmodels/README.md) | 1 | 1 :warning: |
| | [jpmml-xgboost](content/org/jpmml/jpmml-xgboost/README.md) | 1 | 1 :warning: |
| org.jrivard.xmlchai | [xmlchai](content/org/jrivard/xmlchai/README.md) | 2 | 2 :warning: |
| org.junit | [junit-bom](content/org/junit/junit5/README.md) | 4 | 4 :warning: |
| org.kocakosm | [jblake2](content/org/kocakosm/jblake2/README.md) | 2 | 2 :white_check_mark: |
| org.kordamp.jarviz | [jarviz-core](content/org/kordamp/jarviz/README.md) | 1 | 1 :warning: |
| org.kordamp.maven | [pomchecker](content/org/kordamp/pomchecker/README.md) | 1 | 1 :white_check_mark: |
| org.liquibase.ext | [liquibase-percona](content/org/liquibase/ext/liquibase-percona/README.md) | 37 | 36 :white_check_mark: / 1 :warning: |
| org.mockito | [mockito-core](content/org/mockito/mockito-core/README.md) | 24 | 22 :white_check_mark: / 2 :warning: |
| org.moditect.layrry | [layrry-aggregator](content/org/moditect/layrry/README.md) | 1 | 1 :white_check_mark: |
| org.moditect | [moditect](content/org/moditect/moditect/README.md) | 4 | 4 :white_check_mark: |
| org.mybatis | [base-bundle-descriptor](content/org/mybatis/base-bundle-descriptor/README.md) | 2 | 2 :white_check_mark: |
| | [mybatis-cdi](content/org/mybatis/cdi/README.md) | 6 | 5 :white_check_mark: / 1 :warning: |
| org.mybatis.dynamic-sql | [mybatis-dynamic-sql](content/org/mybatis/dynamic-sql/README.md) | 4 | 1 :white_check_mark: / 3 :warning: |
| org.mybatis.generator | [mybatis-generator](content/org/mybatis/generator/README.md) | 1 | 1 :warning: |
| org.mybatis | [mybatis-guice](content/org/mybatis/guice/README.md) | 3 | 3 :white_check_mark: |
| | [mybatis](content/org/mybatis/mybatis/README.md) | 6 | 2 :white_check_mark: / 4 :warning: |
| | [mybatis-2-spring](content/org/mybatis/mybatis-2-spring/README.md) | 1 | 1 :white_check_mark: |
| | [mybatis-spring](content/org/mybatis/mybatis-spring/README.md) | 5 | 2 :white_check_mark: / 3 :warning: |
| | [mybatis2](content/org/mybatis/mybatis2/README.md) | 1 | 1 :white_check_mark: |
| | [mybatis-parent](content/org/mybatis/parent/README.md) | 10 | 10 :white_check_mark: |
| org.mybatis.scala | [mybatis-scala-parent_2.13](content/org/mybatis/scala/README.md) | 1 | 1 :white_check_mark: |
| org.mybatis.caches | [mybatis-caffeine](content/org/mybatis/caches/mybatis-caffeine/README.md) | 2 | 2 :white_check_mark: |
| | [mybatis-ehcache](content/org/mybatis/caches/mybatis-ehcache/README.md) | 1 | 1 :white_check_mark: |
| | [mybatis-hazelcast](content/org/mybatis/caches/mybatis-hazelcast/README.md) | 4 | 4 :white_check_mark: |
| | [mybatis-ignite](content/org/mybatis/caches/mybatis-ignite/README.md) | 1 | 1 :white_check_mark: |
| | [mybatis-memcached](content/org/mybatis/caches/mybatis-memcached/README.md) | 1 | 1 :white_check_mark: |
| org.mybatis.scripting | [mybatis-freemarker](content/org/mybatis/scripting/mybatis-freemarker/README.md) | 1 | 1 :white_check_mark: |
| | [mybatis-thymeleaf](content/org/mybatis/scripting/mybatis-thymeleaf/README.md) | 1 | 1 :white_check_mark: |
| | [mybatis-velocity](content/org/mybatis/scripting/mybatis-velocity/README.md) | 1 | 1 :white_check_mark: |
| org.mybatis.spring.boot | [mybatis-spring-boot](content/org/mybatis/spring/boot/README.md) | 3 | 3 :warning: |
| | [mybatis-spring-boot](content/org/mybatis/spring/boot/mybatis-spring-boot/README.md) | 1 | 1 :white_check_mark: |
| org.nlpub | [watset](content/org/nlpub/watset/README.md) | 14 | 11 :white_check_mark: / 3 :warning: |
| org.openapitools.openapidiff | [openapi-diff-parent](content/org/openapitools/openapidiff/README.md) | 12 | 12 :white_check_mark: |
| org.osgi | [*.test.parent](content/org/osgi/test/README.md) | 6 | 5 :white_check_mark: / 1 :warning: |
| org.owasp.antisamy | [antisamy](content/org/owasp/antisamy/README.md) | 16 | 15 :white_check_mark: / 1 :warning: |
| org.owasp | [dependency-check-parent](content/org/owasp/dependency-check/README.md) | 35 | 29 :white_check_mark: / 6 :warning: |
| org.sentrysoftware | [http](content/org/sentrysoftware/http/README.md) | 2 | 2 :white_check_mark: |
| | [ipmi](content/org/sentrysoftware/ipmi/README.md) | 2 | 2 :white_check_mark: |
| | [jawk](content/org/sentrysoftware/jawk/README.md) | 7 | 6 :white_check_mark: / 1 :warning: |
| | [jflat](content/org/sentrysoftware/jflat/README.md) | 2 | 2 :white_check_mark: |
| | [printf4j](content/org/sentrysoftware/printf4j/README.md) | 3 | 3 :white_check_mark: |
| | [snmp](content/org/sentrysoftware/snmp/README.md) | 2 | 2 :white_check_mark: |
| | [ssh](content/org/sentrysoftware/ssh/README.md) | 2 | 2 :white_check_mark: |
| | [tablejoin](content/org/sentrysoftware/tablejoin/README.md) | 2 | 2 :white_check_mark: |
| | [vcenter](content/org/sentrysoftware/vcenter/README.md) | 2 | 2 :white_check_mark: |
| | [wbem](content/org/sentrysoftware/wbem/README.md) | 2 | 2 :white_check_mark: |
| | [winrm](content/org/sentrysoftware/winrm/README.md) | 2 | 2 :white_check_mark: |
| | [wmi](content/org/sentrysoftware/wmi/README.md) | 2 | 2 :white_check_mark: |
| | [xflat](content/org/sentrysoftware/xflat/README.md) | 2 | 2 :white_check_mark: |
| org.sentrysoftware.maven | [maven-skin-tools](content/org/sentrysoftware/maven/maven-skin-tools/README.md) | 4 | 4 :white_check_mark: |
| | [sentry-maven-skin](content/org/sentrysoftware/maven/sentry-maven-skin/README.md) | 9 | 9 :white_check_mark: |
| org.simplify4u | [pgp-keys-map](content/org/simplify4u/pgp-keys-map/README.md) | 20 | 20 :white_check_mark: |
| | [slf4j-mock](content/org/simplify4u/slf4j-mock/README.md) | 4 | 4 :white_check_mark: |
| org.simplify4u.plugins | [pgpverify-maven-plugin](content/org/simplify4u/plugins/pgpverify-maven-plugin/README.md) | 8 | 8 :white_check_mark: |
| | [sign-maven-plugin](content/org/simplify4u/plugins/sign-maven-plugin/README.md) | 8 | 6 :white_check_mark: / 2 :warning: |
| org.sonatype.nexus.archetypes | [nexus-format-archetype](content/org/sonatype/nexus/archetypes/nexus-format-archetype/README.md) | 5 | 5 :white_check_mark: |
| org.spdx | [java-spdx-library](content/org/spdx/java-spdx-library/README.md) | 4 | 4 :white_check_mark: |
| | [spdx-maven-plugin](content/org/spdx/spdx-maven-plugin/README.md) | 5 | 3 :white_check_mark: / 2 :warning: |
| org.tomitribe.transformer | [org.eclipse.transformer.parent](content/org/tomitribe/transformer/README.md) | 2 | 2 :white_check_mark: |
| org.webjars | [angularjs](content/org/webjars/angularjs/README.md) | 1 | 1 :white_check_mark: |
| | [bootstrap](content/org/webjars/bootstrap/README.md) | 8 | 8 :white_check_mark: |
| | [flexmonster](content/org/webjars/flexmonster/README.md) | 56 | 52 :white_check_mark: / 4 :warning: |
| | [font-awesome](content/org/webjars/font-awesome/README.md) | 7 | 7 :white_check_mark: |
| | [highcharts](content/org/webjars/highcharts/README.md) | 3 | 3 :white_check_mark: |
| | [jszip](content/org/webjars/jszip/README.md) | 1 | 1 :white_check_mark: |
| | [openlayers](content/org/webjars/openlayers/README.md) | 1 | 1 :white_check_mark: |
| | [redoc](content/org/webjars/redoc/README.md) | 2 | 2 :white_check_mark: |
| | [swagger-ui](content/org/webjars/swagger-ui/README.md) | 43 | 42 :white_check_mark: / 1 :warning: |
| | [uswds](content/org/webjars/uswds/README.md) | 1 | 1 :white_check_mark: |
| | [webjars-locator](content/org/webjars/webjars-locator/README.md) | 7 | 7 :white_check_mark: |
| | [webjars-locator-core](content/org/webjars/webjars-locator-core/README.md) | 7 | 7 :white_check_mark: |
| | [webjars-locator-lite](content/org/webjars/webjars-locator-lite/README.md) | 6 | 6 :white_check_mark: |
| pl.com.labaj | [auto-record](content/pl/com/labaj/auto-record/README.md) | 3 | 2 :white_check_mark: / 1 :warning: |
| pl.com.labaj.autorecord | [auto-record](content/pl/com/labaj/autorecord/auto-record/README.md) | 4 | 2 :white_check_mark: / 2 :warning: |
| tech.picnic.error-prone-support | [error-prone-support](content/tech/picnic/error-prone-support/error-prone-support/README.md) | 15 | 14 :white_check_mark: / 1 :warning: |
| tel.schich | [javacan](content/tel/schich/javacan/README.md) | 1 | 1 :warning: |
| us.abstracta.jmeter | [jmeter-java-dsl-parent](content/us/abstracta/jmeter/jmeter-java-dsl/README.md) | 35 | 35 :white_check_mark: |
| world.convex | [convex](content/world/convex/README.md) | 7 | 7 :warning: |
| **Count:** | **640** | **3548** | **2814** :white_check_mark: **734** :warning: |
<!-- END GENERATED RESULTS TABLE -->

Nightly Results Update: [![CircleCI](https://circleci.com/gh/jvm-repo-rebuild/reproducible-central/tree/master.svg?style=shield)](https://circleci.com/gh/jvm-repo-rebuild/reproducible-central/tree/master)

### Tool x JDK statistics

Number of rebuild recipes (`.buildspec`) per build tool (as configured) and JDK target release:

<!-- BEGIN GENERATED STATS -->
```
     26 gradle     11
     15 gradle     17
      5 gradle     21
     26 mvn         7
   1146 mvn         8
      1 mvn         9
    977 mvn        11
      2 mvn        11.0.19
      1 mvn        11.0.21
      1 mvn        11.0.6
      1 mvn        13
      4 mvn        14
     10 mvn        15
     12 mvn        16
    331 mvn        17
      1 mvn        17.0.10
      2 mvn        17.0.7
      1 mvn        17.0.8
      1 mvn        17.0.8.1
      1 mvn        17.0.9
     13 mvn        18
     31 mvn        19
     15 mvn        20
     82 mvn        21
      2 mvn-3.5.4   8
      1 mvn-3.8.3  11
      1 mvn-3.8.5   8
     13 mvn-3.8.5  11
     16 mvn-3.8.5  17
      1 mvn-3.8.5  17.0.3
     39 mvn-3.8.6   8
      2 mvn-3.8.6  11
     37 mvn-3.8.6  17
      2 mvn-3.8.6  18
      4 mvn-3.8.6  19
      1 mvn-3.8.6  20
      5 mvn-3.8.6  21
     17 mvn-3.8.7  17
      4 mvn-3.8.7  21
      1 mvn-3.9.0   8
      4 mvn-3.9.0  11
     11 mvn-3.9.0  17
      9 mvn-3.9.1   8
      2 mvn-3.9.1  11
     52 mvn-3.9.1  17
      1 mvn-3.9.1  19
      6 mvn-3.9.1  20
     31 mvn-3.9.1  21
      7 mvn-3.9.2   8
     17 mvn-3.9.2  17
      3 mvn-3.9.2  21
     58 mvn-3.9.3   8
     42 mvn-3.9.3  11
      1 mvn-3.9.3  11.0.18
      2 mvn-3.9.3  11.0.2
      4 mvn-3.9.3  11.0.5
      5 mvn-3.9.3  11.0.6
      7 mvn-3.9.3  14
     12 mvn-3.9.3  14.0.2
      1 mvn-3.9.3  15.0.2
     57 mvn-3.9.3  17
      6 mvn-3.9.3  17.0.1
      4 mvn-3.9.3  17.0.2
     52 mvn-3.9.3  17.0.3
      3 mvn-3.9.3  17.0.4
     18 mvn-3.9.3  17.0.4.1
     13 mvn-3.9.3  17.0.5
     20 mvn-3.9.3  17.0.6
     59 mvn-3.9.3  17.0.7
      9 mvn-3.9.3  17.0.8
      1 mvn-3.9.3  17.0.8.1
      1 mvn-3.9.3  17.0.9
      7 mvn-3.9.3  19
     36 mvn-3.9.3  21
      7 mvn-3.9.4   8
      7 mvn-3.9.4  11
      1 mvn-3.9.4  17
      2 mvn-3.9.4  17.0.7
      2 mvn-3.9.4  20
      3 mvn-3.9.4  21
      3 mvn-3.9.5  11
     20 mvn-3.9.5  17
      2 mvn-3.9.5  17.0.7
      1 mvn-3.9.5  17.0.9
     33 mvn-3.9.5  21
      1 mvn-3.9.5  22
      8 mvn-3.9.6   8
      2 mvn-3.9.6  11
      6 mvn-3.9.6  17
      1 mvn-3.9.6  17.0.7
     24 mvn-3.9.6  21
      5 mvn-3.9.6  22
      2 mvn-4.0.0-alpha-12  21
      2 mvn-4.0.0-alpha-12  22
      1 mvn-4.0.0-alpha-7  17
      1 mvn-4.0.0-alpha-8  21
      2 sbt         8
```
<!-- END GENERATED STATS -->
