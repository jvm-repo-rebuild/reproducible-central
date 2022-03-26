Rebuilding artifacts from (Maven) Central Repository
====================================================

[![Reproducible Builds](https://reproducible-builds.org/images/logos/rb.svg) an independently-verifiable path from source to binary code](https://reproducible-builds.org/)

As part of [Reproducible Builds efforts for the JVM](https://reproducible-builds.org/docs/jvm/), this "**Reproducible Central**" project is an attempt at:
1. writing [`.buildspec`rebuild instructions](BUILDSPEC.md) for the artifacts available in the [Central Repository](https://search.maven.org/),
equivalent to the packaging instructions that are maintained by every Linux distribution
(for example Debian's [debian/rules](https://www.debian.org/doc/debian-policy/ch-source#s-debianrules) or ArchLinux's PKGBUILD), whatever the build tool used (Central Repository is not used by Maven only)
2. show the level of reproducibility obtained using previous instructions: how many output files from the rebuild are strictly equal to reference in Central Repository, how many output files are not yet reproducible and should be improved before the next release?

## What Can I Do?

<details><summary><b>Rebuild Yourself To Check Results</b></summary>

 - <details><summary><b>Prerequisites</b></summary>
    
    * [Docker](https://www.docker.com)
    
    * `dos2unix` - DOS to MAC/UNIX text file format converter. 
      
      Can be installed via [homebrew](https://brew.sh) on MAC via: `brew install dos2unix`.
   </details>

You can rebuild a project release by running:
```
./rebuild.sh content/<path/to/...>/<project>-<version>.buildspec
```
`rebuild.sh` script will use the build specification file (= [`.buildspec` file](BUILDSPEC.md)) to choose a Docker image to rebuild the project and check output against Central Repository reference binaries.

</details>

<details><summary><b>Contribute A New `.buildspec`</b></summary>

If you know a project released to Central Repository that is expected to provide Reproducible Builds, please tell us by opening an issue with details.

You can also choose one from our [list of projects waiting for a `.buildspec`](https://github.com/jvm-repo-rebuild/reproducible-central/labels/buildspec): follow our [instructions to write a new `.buildspec`)](BUILDSPEC.md#writing-a-new-buildspec) that you can contribute back with a PR.

</details>

<details><summary><b>Improve Reproducibility Score Of A Project Release</b></summary>

If a rebuild published here is not fully reproducible (it has some :warning:), there is an issue: please help to improve the situation.

You'll need to rebuild the release yourself (see previous instructions), then use [diffoscope](https://diffoscope.org/) to easily explore precise difference
between reference file from Central Repository and effective rebuild file, then debug up to the root cause of this unwanted difference:
- rebuilder bug: if the improvement has to happen at [buildspec](BUILDSPEC.md) or [rebuild script](rebuild.sh) level, don't hesitate to open an issue or a PR here,
- upstream project reproducibility issue :beetle:: please contact the upstream project and help them improve the reproducibility for their next release, creating an issue in their issue tracker and adding it to Reproducible Central buildspec as `issue` parameter that will link to it with a :beetle:.

</details>

<details><summary><b>Add Reproducible Builds Badge to a Project With Reproducible Releases</b></summary>

If a project has listed here at least one release with proven reproducibility success, it can add a badge like ![Reproducible Builds](https://img.shields.io/badge/Reproducible_Builds-ok-success?labelColor=1e5b96) pointing to its entries here:

```
[![Reproducible Builds](https://img.shields.io/badge/Reproducible_Builds-ok-success?labelColor=1e5b96)](https://github.com/jvm-repo-rebuild/reproducible-central#...groupId...:...artifactId...)
```

Notice the anchor in the link.

</details>

## Rebuild Results

Nightly Rebuild: [![CircleCI](https://circleci.com/gh/jvm-repo-rebuild/reproducible-central/tree/master.svg?style=shield)](https://circleci.com/gh/jvm-repo-rebuild/reproducible-central/tree/master)

<!-- BEGIN GENERATED INTRO -->
rebuilding **761 releases** of **242 projects**:
- **584** releases were found successfully **fully reproducible** (100% reproducible artifacts :heavy_check_mark:),
- 177 had issues (some unreproducible artifacts :warning:):

<!-- END GENERATED INTRO -->

<!-- BEGIN GENERATED RESULTS TABLE -->
| [Central Repository](https://search.maven.org/) groupId | artifactId(s) | versions | [result](https://reproducible-builds.org/docs/jvm/): reproducible? |
| ----------------- | --------------- | --------- | -------- |
| biz.aQute.bnd | [bnd-plugin-parent](content/biz/aQute/bnd/plugins/README.md) | 5 | 5 :heavy_check_mark: |
| ch.qos.logback | [logback-parent](content/ch/qos/logback/README.md) | 3 | 1 :heavy_check_mark: / 2 :warning: |
| ch.qos.reload4j | [reload4j](content/ch/qos/reload4j/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| com.adobe.acs | [acs-aem-commons](content/com/adobe/acs/aem-commons/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| com.github.adangel.liquibase.ext | [liquibase-percona](content/com/github/adangel/liquibase/ext/liquibase-percona/README.md) | 1 | 1 :heavy_check_mark: |
| com.github.ldapchai | [ldapchai](content/com/github/ldapchai/README.md) | 4 | 0 :heavy_check_mark: / 4 :warning: |
| com.github.package-url | [packageurl-java](content/com/github/package-url/packageurl-java/README.md) | 3 | 3 :heavy_check_mark: |
| com.github.veithen.maven | [java-format-maven-plugin](content/com/github/veithen/maven/java-format-maven-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| com.github.veithen | [parent](content/com/github/veithen/parent/README.md) | 2 | 1 :heavy_check_mark: / 1 :warning: |
| com.io7m.jade | [com.io7m.jade](content/com/io7m/jade/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| com.ongres.stringprep | [parent](content/com/ongres/stringprep/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| com.scalapenos | [stamina_2.11](content/com/scalapenos/stamina/README.md) | 2 | 2 :heavy_check_mark: |
| com.taobao.arthas | [arthas-all](content/com/taobao/arthas/README.md) | 13 | 0 :heavy_check_mark: / 13 :warning: |
| fr.vidal.oss | [atom-jaxb](content/fr/vidal/oss/README.md) | 2 | 1 :heavy_check_mark: / 1 :warning: |
| io.dropwizard | [dropwizard-project](content/io/dropwizard/core/README.md) | 26 | 23 :heavy_check_mark: / 3 :warning: |
| io.dropwizard.metrics | [metrics-parent](content/io/dropwizard/metrics/README.md) | 25 | 11 :heavy_check_mark: / 14 :warning: |
| io.dropwizard.metrics5 | [metrics-parent](content/io/dropwizard/metrics5/README.md) | 6 | 1 :heavy_check_mark: / 5 :warning: |
| io.fabric8 | [docker-maven-plugin](content/io/fabric8/docker-maven-plugin/README.md) | 8 | 6 :heavy_check_mark: / 2 :warning: |
| | [kubernetes-client-project](content/io/fabric8/kubernetes-client/README.md) | 7 | 0 :heavy_check_mark: / 7 :warning: |
| io.github.albertus82 | [jface-utils](content/io/github/albertus82/jface-utils/README.md) | 2 | 1 :heavy_check_mark: / 1 :warning: |
| | [unexepack](content/io/github/albertus82/unexepack/README.md) | 3 | 0 :heavy_check_mark: / 3 :warning: |
| io.github.derkrischan | [jpdftest](content/io/github/derkrischan/jpdftest/README.md) | 3 | 3 :heavy_check_mark: |
| io.liftwizard | [liftwizard](content/io/liftwizard/README.md) | 22 | 22 :heavy_check_mark: |
| io.micronaut.build | [micronaut-maven-plugin](content/io/micronaut/build/micronaut-maven-plugin/README.md) | 19 | 19 :heavy_check_mark: |
| io.wcm | [*.caconfig.editor.parent](content/io/wcm/caconfig/README.md) | 4 | 0 :heavy_check_mark: / 4 :warning: |
| | [*.handler.richtext](content/io/wcm/handler/README.md) | 7 | 1 :heavy_check_mark: / 6 :warning: |
| io.wcm.maven.plugins | [nodejs-maven-plugin](content/io/wcm/maven/plugins/nodejs-maven-plugin/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| io.wcm.tooling.commons | [*.content-package-builder](content/io/wcm/tooling/README.md) | 3 | 3 :heavy_check_mark: |
| io.wcm | [*.wcm.ui.clientlibs](content/io/wcm/wcm/README.md) | 8 | 6 :heavy_check_mark: / 2 :warning: |
| net.nicoulaj.maven.plugins | [checksum-maven-plugin](content/net/nicoulaj/maven/plugins/checksum-maven-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| net.sourceforge.pmd | [pmd](content/net/sourceforge/pmd/README.md) | 20 | 19 :heavy_check_mark: / 1 :warning: |
| nl.hsac | [hsac-fitnesse-fixtures](content/nl/hsac/hsac-fitnesse-fixtures/README.md) | 24 | 13 :heavy_check_mark: / 11 :warning: |
| org.apache.accumulo | [accumulo](content/org/apache/accumulo/README.md) | 3 | 0 :heavy_check_mark: / 3 :warning: |
| org.apache.activemq | [activemq-parent](content/org/apache/activemq/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| org.apache.any23 | [apache-any23](content/org/apache/any23/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache | [apache](content/org/apache/apache/README.md) | 3 | 2 :heavy_check_mark: / 1 :warning: |
| org.apache.aries.cdi | [org.apache.aries.cdi](content/org/apache/aries/cdi/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.camel | [camel](content/org/apache/camel/camel/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.cxf.fediz | [fediz](content/org/apache/cxf/fediz/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.drill | [drill-root](content/org/apache/drill/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.dubbo | [dubbo](content/org/apache/dubbo/README.md) | 4 | 0 :heavy_check_mark: / 4 :warning: |
| org.apache.felix | [*.feature](content/org/apache/felix/features/README.md) | 3 | 3 :heavy_check_mark: |
| | [*.http.parent](content/org/apache/felix/http/parent/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-bundle-plugin](content/org/apache/felix/maven-bundle-plugin/README.md) | 2 | 2 :heavy_check_mark: |
| | [felix-parent](content/org/apache/felix/pom/README.md) | 1 | 1 :heavy_check_mark: |
| org.apache.httpcomponents | [httpcomponents-parent](content/org/apache/httpcomponents/parent/README.md) | 1 | 1 :heavy_check_mark: |
| org.apache.jackrabbit | [filevault-package-maven-plugin](content/org/apache/jackrabbit/filevault-package-maven-plugin/README.md) | 4 | 4 :heavy_check_mark: |
| org.apache.jackrabbit.vault | [jackrabbit-filevault](content/org/apache/jackrabbit/filevault/README.md) | 7 | 0 :heavy_check_mark: / 7 :warning: |
| org.apache.jena | [jena](content/org/apache/jena/jena/README.md) | 8 | 0 :heavy_check_mark: / 8 :warning: |
| org.apache.jspwiki | [jspwiki-builder](content/org/apache/jspwiki/README.md) | 5 | 0 :heavy_check_mark: / 5 :warning: |
| org.apache.karaf | [decanter](content/org/apache/karaf/decanter/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [karaf](content/org/apache/karaf/karaf/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| org.apache.logging | [logging-parent](content/org/apache/logging/parent/README.md) | 2 | 1 :heavy_check_mark: / 1 :warning: |
| org.apache.maven.archetype | [maven-archetype](content/org/apache/maven/archetype/README.md) | 2 | 2 :heavy_check_mark: |
| org.apache.maven.doxia | [doxia-sitetools](content/org/apache/maven/doxia/doxia-sitetools/README.md) | 5 | 5 :heavy_check_mark: |
| | [doxia](content/org/apache/maven/doxia/doxia/README.md) | 5 | 5 :heavy_check_mark: |
| org.apache.maven.indexer | [maven-indexer](content/org/apache/maven/indexer/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.maven.jxr | [jxr](content/org/apache/maven/jxr/README.md) | 2 | 2 :heavy_check_mark: |
| org.apache.maven | [maven](content/org/apache/maven/maven/README.md) | 6 | 3 :heavy_check_mark: / 3 :warning: |
| | [maven-parent](content/org/apache/maven/parent/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| org.apache.maven.plugin-tools | [maven-plugin-tools](content/org/apache/maven/plugin-tools/maven-plugin-tools/README.md) | 3 | 3 :heavy_check_mark: |
| org.apache.maven.plugins | [maven-antrun-plugin](content/org/apache/maven/plugins/maven-antrun-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-artifact-plugin](content/org/apache/maven/plugins/maven-artifact-plugin/README.md) | 3 | 3 :heavy_check_mark: |
| | [maven-assembly-plugin](content/org/apache/maven/plugins/maven-assembly-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-checkstyle-plugin](content/org/apache/maven/plugins/maven-checkstyle-plugin/README.md) | 2 | 2 :heavy_check_mark: |
| | [maven-compiler-plugin](content/org/apache/maven/plugins/maven-compiler-plugin/README.md) | 3 | 3 :heavy_check_mark: |
| | [maven-dependency-plugin](content/org/apache/maven/plugins/maven-dependency-plugin/README.md) | 3 | 3 :heavy_check_mark: |
| | [maven-deploy-plugin](content/org/apache/maven/plugins/maven-deploy-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-ear-plugin](content/org/apache/maven/plugins/maven-ear-plugin/README.md) | 2 | 2 :heavy_check_mark: |
| | [maven-ejb-plugin](content/org/apache/maven/plugins/maven-ejb-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| org.apache.maven.enforcer | [enforcer](content/org/apache/maven/plugins/maven-enforcer-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| org.apache.maven.plugins | [maven-gpg-plugin](content/org/apache/maven/plugins/maven-gpg-plugin/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [maven-invoker-plugin](content/org/apache/maven/plugins/maven-invoker-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-jar-plugin](content/org/apache/maven/plugins/maven-jar-plugin/README.md) | 2 | 2 :heavy_check_mark: |
| | [maven-javadoc-plugin](content/org/apache/maven/plugins/maven-javadoc-plugin/README.md) | 4 | 2 :heavy_check_mark: / 2 :warning: |
| | [maven-jlink-plugin](content/org/apache/maven/plugins/maven-jlink-plugin/README.md) | 2 | 2 :heavy_check_mark: |
| | [maven-pdf-plugin](content/org/apache/maven/plugins/maven-pdf-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-pmd-plugin](content/org/apache/maven/plugins/maven-pmd-plugin/README.md) | 3 | 3 :heavy_check_mark: |
| | [maven-project-info-reports-plugin](content/org/apache/maven/plugins/maven-project-info-reports-plugin/README.md) | 5 | 4 :heavy_check_mark: / 1 :warning: |
| | [maven-release-plugin](content/org/apache/maven/plugins/maven-release-plugin/README.md) | 2 | 2 :heavy_check_mark: |
| | [maven-resources-plugin](content/org/apache/maven/plugins/maven-resources-plugin/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [maven-scm-publish-plugin](content/org/apache/maven/plugins/maven-scm-publish-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-scripting-plugin](content/org/apache/maven/plugins/maven-scripting-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-shade-plugin](content/org/apache/maven/plugins/maven-shade-plugin/README.md) | 3 | 3 :heavy_check_mark: |
| | [maven-site-plugin](content/org/apache/maven/plugins/maven-site-plugin/README.md) | 4 | 2 :heavy_check_mark: / 2 :warning: |
| | [maven-source-plugin](content/org/apache/maven/plugins/maven-source-plugin/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [maven-war-plugin](content/org/apache/maven/plugins/maven-war-plugin/README.md) | 3 | 3 :heavy_check_mark: |
| | [maven-wrapper-plugin](content/org/apache/maven/plugins/maven-wrapper-plugin/README.md) | 2 | 1 :heavy_check_mark: / 1 :warning: |
| org.apache.maven.reporting | [maven-reporting-api](content/org/apache/maven/reporting/maven-reporting-api/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-reporting-exec](content/org/apache/maven/reporting/maven-reporting-exec/README.md) | 2 | 2 :heavy_check_mark: |
| | [maven-reporting-impl](content/org/apache/maven/reporting/maven-reporting-impl/README.md) | 1 | 1 :heavy_check_mark: |
| org.apache.maven.resolver | [maven-resolver-ant-tasks](content/org/apache/maven/resolver/maven-resolver-ant-tasks/README.md) | 4 | 4 :heavy_check_mark: |
| | [maven-resolver](content/org/apache/maven/resolver/maven-resolver/README.md) | 8 | 7 :heavy_check_mark: / 1 :warning: |
| org.apache.maven.scm | [maven-scm](content/org/apache/maven/scm/README.md) | 4 | 4 :heavy_check_mark: |
| org.apache.maven | [maven-archiver](content/org/apache/maven/shared/maven-archiver/README.md) | 2 | 2 :heavy_check_mark: |
| org.apache.maven.shared | [maven-artifact-transfer](content/org/apache/maven/shared/maven-artifact-transfer/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [maven-common-artifact-filters](content/org/apache/maven/shared/maven-common-artifact-filters/README.md) | 2 | 2 :heavy_check_mark: |
| | [maven-dependency-analyzer](content/org/apache/maven/shared/maven-dependency-analyzer/README.md) | 3 | 3 :heavy_check_mark: |
| | [maven-dependency-tree](content/org/apache/maven/shared/maven-dependency-tree/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-filtering](content/org/apache/maven/shared/maven-filtering/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [maven-invoker](content/org/apache/maven/shared/maven-invoker/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-script-interpreter](content/org/apache/maven/shared/maven-script-interpreter/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-shared-resources](content/org/apache/maven/shared/maven-shared-resources/README.md) | 2 | 2 :heavy_check_mark: |
| | [maven-shared-utils](content/org/apache/maven/shared/maven-shared-utils/README.md) | 1 | 1 :heavy_check_mark: |
| | [maven-verifier](content/org/apache/maven/shared/maven-verifier/README.md) | 2 | 2 :heavy_check_mark: |
| org.apache.maven.skins | [maven-fluido-skin](content/org/apache/maven/skins/fluido/README.md) | 2 | 2 :heavy_check_mark: |
| org.apache.maven.surefire | [surefire](content/org/apache/maven/surefire/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.maven.wagon | [wagon](content/org/apache/maven/wagon/wagon/README.md) | 6 | 6 :heavy_check_mark: |
| org.apache.maven.wrapper | [maven-wrapper-parent](content/org/apache/maven/wrapper/README.md) | 1 | 1 :heavy_check_mark: |
| org.apache.ftpserver | [ftpserver-parent](content/org/apache/mina/ftpserver/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.mina | [mina-parent](content/org/apache/mina/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.plc4x.plugins | [plc4x-code-generaton](content/org/apache/plc4x/plc4x-code-generation/README.md) | 1 | 1 :heavy_check_mark: |
| org.apache.plc4x | [plc4x-parent](content/org/apache/plc4x/plc4x/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.royale.compiler | [compiler](content/org/apache/royale/compiler/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.shiro | [shiro-root](content/org/apache/shiro/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.sling | [htl-maven-plugin](content/org/apache/sling/htl-maven-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [jspc-maven-plugin](content/org/apache/sling/jspc-maven-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.adapter](content/org/apache/sling/org.apache.sling.adapter/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.api](content/org/apache/sling/org.apache.sling.api/README.md) | 4 | 4 :heavy_check_mark: |
| | [*.auth.core](content/org/apache/sling/org.apache.sling.auth.core/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.bundleresource.impl](content/org/apache/sling/org.apache.sling.bundleresource.impl/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.caconfig.api](content/org/apache/sling/org.apache.sling.caconfig.api/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.caconfig.impl](content/org/apache/sling/org.apache.sling.caconfig.impl/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.caconfig.spi](content/org/apache/sling/org.apache.sling.caconfig.spi/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.commons.content.analyzing](content/org/apache/sling/org.apache.sling.commons.content.analyzing/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.commons.content.processing](content/org/apache/sling/org.apache.sling.commons.content.processing/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.commons.crypto](content/org/apache/sling/org.apache.sling.commons.crypto/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [*.commons.johnzon](content/org/apache/sling/org.apache.sling.commons.johnzon/README.md) | 5 | 3 :heavy_check_mark: / 2 :warning: |
| | [*.commons.log](content/org/apache/sling/org.apache.sling.commons.log/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| | [*.commons.messaging.mail](content/org/apache/sling/org.apache.sling.commons.messaging.mail/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [*.commons.messaging](content/org/apache/sling/org.apache.sling.commons.messaging/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.commons.metrics](content/org/apache/sling/org.apache.sling.commons.metrics/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [*.distribution.journal.kafka](content/org/apache/sling/org.apache.sling.distribution.journal.kafka/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.distribution.journal](content/org/apache/sling/org.apache.sling.distribution.journal/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.engine](content/org/apache/sling/org.apache.sling.engine/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.event](content/org/apache/sling/org.apache.sling.event/README.md) | 5 | 0 :heavy_check_mark: / 5 :warning: |
| | [*.feature.analyser](content/org/apache/sling/org.apache.sling.feature.analyser/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| | [*.feature.cpconverter](content/org/apache/sling/org.apache.sling.feature.cpconverter/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| | [*.feature.extension.apiregions](content/org/apache/sling/org.apache.sling.feature.extension.apiregions/README.md) | 5 | 5 :heavy_check_mark: |
| | [*.feature.extension.unpack](content/org/apache/sling/org.apache.sling.feature.extension.unpack/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [*.feature.launcher](content/org/apache/sling/org.apache.sling.feature.launcher/README.md) | 4 | 2 :heavy_check_mark: / 2 :warning: |
| | [*.feature](content/org/apache/sling/org.apache.sling.feature/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [*.fsresource](content/org/apache/sling/org.apache.sling.fsresource/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.i18n](content/org/apache/sling/org.apache.sling.i18n/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [*.installer.console](content/org/apache/sling/org.apache.sling.installer.console/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [*.installer.core](content/org/apache/sling/org.apache.sling.installer.core/README.md) | 4 | 0 :heavy_check_mark: / 4 :warning: |
| | [*.installer.factory.configuration](content/org/apache/sling/org.apache.sling.installer.factory.configuration/README.md) | 5 | 1 :heavy_check_mark: / 4 :warning: |
| | [*.installer.factory.packages](content/org/apache/sling/org.apache.sling.installer.factory.packages/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| | [*.installer.provider.file](content/org/apache/sling/org.apache.sling.installer.provider.file/README.md) | 3 | 2 :heavy_check_mark: / 1 :warning: |
| | [*.installer.provider.jcr](content/org/apache/sling/org.apache.sling.installer.provider.jcr/README.md) | 2 | 1 :heavy_check_mark: / 1 :warning: |
| | [*.javax.activation](content/org/apache/sling/org.apache.sling.javax.activation/README.md) | 2 | 1 :heavy_check_mark: / 1 :warning: |
| | [*.jcr.contentloader](content/org/apache/sling/org.apache.sling.jcr.contentloader/README.md) | 3 | 0 :heavy_check_mark: / 3 :warning: |
| | [*.jcr.jackrabbit.accessmanager](content/org/apache/sling/org.apache.sling.jcr.jackrabbit.accessmanager/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [*.jcr.jackrabbit.usermanager](content/org/apache/sling/org.apache.sling.jcr.jackrabbit.usermanager/README.md) | 3 | 0 :heavy_check_mark: / 3 :warning: |
| | [*.jcr.maintenance](content/org/apache/sling/org.apache.sling.jcr.maintenance/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.jcr.packageinit](content/org/apache/sling/org.apache.sling.jcr.packageinit/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.jcr.resource](content/org/apache/sling/org.apache.sling.jcr.resource/README.md) | 2 | 2 :heavy_check_mark: |
| | [*.jcr.resourcesecurity](content/org/apache/sling/org.apache.sling.jcr.resourcesecurity/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.launchpad.test-services](content/org/apache/sling/org.apache.sling.launchpad.test-services/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.models.api](content/org/apache/sling/org.apache.sling.models.api/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.models.caconfig](content/org/apache/sling/org.apache.sling.models.caconfig/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.models.impl](content/org/apache/sling/org.apache.sling.models.impl/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.models.jacksonexporter](content/org/apache/sling/org.apache.sling.models.jacksonexporter/README.md) | 2 | 2 :heavy_check_mark: |
| | [*.models.validation-impl](content/org/apache/sling/org.apache.sling.models.validation-impl/README.md) | 2 | 2 :heavy_check_mark: |
| | [*.pipes](content/org/apache/sling/org.apache.sling.pipes/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| | [*.repoinit.parser](content/org/apache/sling/org.apache.sling.repoinit.parser/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.resourceaccesssecurity](content/org/apache/sling/org.apache.sling.resourceaccesssecurity/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.resourcemerger](content/org/apache/sling/org.apache.sling.resourcemerger/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.resourceresolver](content/org/apache/sling/org.apache.sling.resourceresolver/README.md) | 3 | 3 :heavy_check_mark: |
| | [*.rewriter](content/org/apache/sling/org.apache.sling.rewriter/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [*.scripting.core](content/org/apache/sling/org.apache.sling.scripting.core/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| | [*.scripting.sightly.repl](content/org/apache/sling/org.apache.sling.scripting.sightly.repl/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.scripting.sightly.testing-content](content/org/apache/sling/org.apache.sling.scripting.sightly.testing-content/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.scripting.sightly](content/org/apache/sling/org.apache.sling.scripting.sightly/README.md) | 3 | 3 :heavy_check_mark: |
| | [*.scripting.spi](content/org/apache/sling/org.apache.sling.scripting.spi/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.security](content/org/apache/sling/org.apache.sling.security/README.md) | 2 | 2 :heavy_check_mark: |
| | [*.servlets.annotations](content/org/apache/sling/org.apache.sling.servlets.annotations/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.servlets.post](content/org/apache/sling/org.apache.sling.servlets.post/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| | [*.servlets.resolver](content/org/apache/sling/org.apache.sling.servlets.resolver/README.md) | 4 | 0 :heavy_check_mark: / 4 :warning: |
| | [*.settings](content/org/apache/sling/org.apache.sling.settings/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.sitemap](content/org/apache/sling/org.apache.sling.sitemap/README.md) | 2 | 2 :heavy_check_mark: |
| | [*.starter.content](content/org/apache/sling/org.apache.sling.starter.content/README.md) | 2 | 2 :heavy_check_mark: |
| | [*.starter](content/org/apache/sling/org.apache.sling.starter/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [*.tenant](content/org/apache/sling/org.apache.sling.tenant/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.testing.caconfig-mock-plugin](content/org/apache/sling/org.apache.sling.testing.caconfig-mock-plugin/README.md) | 3 | 3 :heavy_check_mark: |
| | [*.testing.clients](content/org/apache/sling/org.apache.sling.testing.clients/README.md) | 4 | 4 :heavy_check_mark: |
| | [*.testing.jcr-mock](content/org/apache/sling/org.apache.sling.testing.jcr-mock/README.md) | 1 | 1 :heavy_check_mark: |
| | [*.testing.resourceresolver-mock](content/org/apache/sling/org.apache.sling.testing.resourceresolver-mock/README.md) | 4 | 3 :heavy_check_mark: / 1 :warning: |
| | [*.testing.sling-mock-oak](content/org/apache/sling/org.apache.sling.testing.sling-mock-oak/README.md) | 3 | 3 :heavy_check_mark: |
| | [scriptingbundle-maven-plugin](content/org/apache/sling/scriptingbundle-maven-plugin/README.md) | 3 | 0 :heavy_check_mark: / 3 :warning: |
| | [slingfeature-maven-plugin](content/org/apache/sling/slingfeature-maven-plugin/README.md) | 5 | 2 :heavy_check_mark: / 3 :warning: |
| org.apache.sshd | [sshd](content/org/apache/sshd/README.md) | 2 | 0 :heavy_check_mark: / 2 :warning: |
| org.apache.struts | [struts2-parent](content/org/apache/struts/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.tika | [tika](content/org/apache/tika/README.md) | 4 | 0 :heavy_check_mark: / 4 :warning: |
| org.apache.wayang | [wayang](content/org/apache/wayang/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.apache.wss4j | [wss4j](content/org/apache/wss4j/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.codehaus.modello | [modello](content/org/codehaus/modello/README.md) | 1 | 1 :heavy_check_mark: |
| org.codehaus.mojo | [animal-sniffer-parent](content/org/codehaus/mojo/animal-sniffer/README.md) | 2 | 2 :heavy_check_mark: |
| | [aspectj-maven-plugin](content/org/codehaus/mojo/aspectj-maven-plugin/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [extra-enforcer-rules](content/org/codehaus/mojo/extra-enforcer-rules/README.md) | 3 | 3 :heavy_check_mark: |
| | [flatten-maven-plugin](content/org/codehaus/mojo/flatten-maven-plugin/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| | [mojo-parent](content/org/codehaus/mojo/mojo-parent/README.md) | 5 | 5 :heavy_check_mark: |
| | [properties-maven-plugin](content/org/codehaus/mojo/properties-maven-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [taglist-maven-plugin](content/org/codehaus/mojo/taglist-maven-plugin/README.md) | 1 | 1 :heavy_check_mark: |
| | [versions-maven-plugin](content/org/codehaus/mojo/versions-maven-plugin/README.md) | 3 | 3 :heavy_check_mark: |
| | [wagon-maven-plugin](content/org/codehaus/mojo/wagon-maven-plugin/README.md) | 2 | 1 :heavy_check_mark: / 1 :warning: |
| org.codehaus.plexus | [plexus-archiver](content/org/codehaus/plexus/plexus-archiver/README.md) | 6 | 5 :heavy_check_mark: / 1 :warning: |
| | [plexus-cipher](content/org/codehaus/plexus/plexus-cipher/README.md) | 1 | 1 :heavy_check_mark: |
| | [plexus-compiler](content/org/codehaus/plexus/plexus-compiler/README.md) | 7 | 5 :heavy_check_mark: / 2 :warning: |
| | [plexus-components](content/org/codehaus/plexus/plexus-components/README.md) | 4 | 3 :heavy_check_mark: / 1 :warning: |
| | [plexus-interactivity](content/org/codehaus/plexus/plexus-interactivity/README.md) | 1 | 1 :heavy_check_mark: |
| | [plexus-languages](content/org/codehaus/plexus/plexus-languages/README.md) | 5 | 0 :heavy_check_mark: / 5 :warning: |
| | [plexus](content/org/codehaus/plexus/plexus-pom/README.md) | 6 | 5 :heavy_check_mark: / 1 :warning: |
| | [plexus-utils](content/org/codehaus/plexus/plexus-utils/README.md) | 2 | 2 :heavy_check_mark: |
| | [plexus-velocity](content/org/codehaus/plexus/plexus-velocity/README.md) | 1 | 1 :heavy_check_mark: |
| org.complate | [complate-core](content/org/complate/README.md) | 1 | 1 :heavy_check_mark: |
| org.cyclonedx | [cyclonedx-core-java](content/org/cyclonedx/cyclonedx-core-java/README.md) | 20 | 20 :heavy_check_mark: |
| | [cyclonedx-maven-plugin](content/org/cyclonedx/cyclonedx-maven-plugin/README.md) | 8 | 8 :heavy_check_mark: |
| org.eclipse.jkube | [jkube](content/org/eclipse/jkube/README.md) | 9 | 9 :heavy_check_mark: |
| org.eclipse.transformer | [*.parent](content/org/eclipse/transformer/README.md) | 1 | 1 :heavy_check_mark: |
| org.fusesource.jansi | [jansi](content/org/fusesource/jansi/jansi/README.md) | 8 | 5 :heavy_check_mark: / 3 :warning: |
| org.jline | [jline-parent](content/org/jline/jline/README.md) | 2 | 2 :heavy_check_mark: |
| org.jrivard.xmlchai | [xmlchai](content/org/jrivard/xmlchai/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.liquibase.ext | [liquibase-percona](content/org/liquibase/ext/liquibase-percona/README.md) | 16 | 15 :heavy_check_mark: / 1 :warning: |
| org.mybatis.dynamic-sql | [mybatis-dynamic-sql](content/org/mybatis/dynamic-sql/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.mybatis | [mybatis-guice](content/org/mybatis/guice/README.md) | 1 | 1 :heavy_check_mark: |
| | [mybatis-parent](content/org/mybatis/parent/README.md) | 1 | 1 :heavy_check_mark: |
| org.nlpub | [watset](content/org/nlpub/watset/README.md) | 12 | 11 :heavy_check_mark: / 1 :warning: |
| org.openapitools.openapidiff | [openapi-diff-parent](content/org/openapitools/openapidiff/README.md) | 1 | 1 :heavy_check_mark: |
| org.osgi | [*.test.parent](content/org/osgi/test/README.md) | 3 | 2 :heavy_check_mark: / 1 :warning: |
| org.owasp.antisamy | [antisamy](content/org/owasp/antisamy/README.md) | 6 | 6 :heavy_check_mark: |
| org.quickperf | [quick-perf](content/org/quickperf/README.md) | 3 | 3 :heavy_check_mark: |
| org.simplify4u | [pgp-keys-map](content/org/simplify4u/pgp-keys-map/README.md) | 12 | 12 :heavy_check_mark: |
| org.simplify4u.plugins | [pgpverify-maven-plugin](content/org/simplify4u/plugins/pgpverify-maven-plugin/README.md) | 7 | 7 :heavy_check_mark: |
| | [sign-maven-plugin](content/org/simplify4u/plugins/sign-maven-plugin/README.md) | 7 | 5 :heavy_check_mark: / 2 :warning: |
| org.simplify4u | [slf4j-mock](content/org/simplify4u/slf4j-mock/README.md) | 2 | 2 :heavy_check_mark: |
| org.slf4j | [slf4j-parent](content/org/slf4j/README.md) | 1 | 0 :heavy_check_mark: / 1 :warning: |
| org.sonatype.nexus.archetypes | [nexus-format-archetype](content/org/sonatype/nexus/archetypes/nexus-format-archetype/README.md) | 1 | 1 :heavy_check_mark: |
| org.tomitribe.transformer | [org.eclipse.transformer.parent](content/org/tomitribe/transformer/README.md) | 2 | 2 :heavy_check_mark: |
| org.webjars | [flexmonster](content/org/webjars/flexmonster/README.md) | 2 | 2 :heavy_check_mark: |
| | [swagger-ui](content/org/webjars/swagger-ui/README.md) | 4 | 4 :heavy_check_mark: |
| world.convex | [convex](content/world/convex/README.md) | 4 | 0 :heavy_check_mark: / 4 :warning: |
| **Count:** | **242** | **761** | **584** :heavy_check_mark: **177** :warning: |
<!-- END GENERATED RESULTS TABLE -->

## Understanding What Is Behind

see [history](HISTORY.md)

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#
