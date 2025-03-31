///usr/bin/env jbang "$0" "$@" ; exit $?

//DEPS org.apache.maven:maven-repository-metadata:3.9.9

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.URLDecoder;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.LinkedHashMap;
import java.util.Optional;
import java.util.Properties;
import java.util.Set;
import java.util.TreeMap;
import java.util.function.Predicate;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.apache.maven.artifact.repository.metadata.Metadata;
import org.apache.maven.artifact.repository.metadata.io.xpp3.MetadataXpp3Reader;

import org.codehaus.plexus.util.xml.pull.XmlPullParserException;

/**
 * Update artifact badge data = https://github.com/jvm-repo-rebuild/reproducible-central/tree/gh-pages/badge/artifact
 * consumed through public url https://jvm-repo-rebuild.github.io/reproducible-central/
 * by badge https://shields.io/badges/reproducible-central-artifact = https://github.com/badges/shields/tree/master/services/reproducible-central
 */
public class update_artifact_badge_data extends SimpleFileVisitor<Path> {
    // https://jvm-repo-rebuild.github.io/reproducible-central/
    private static final Path BADGE_ARTIFACT_BASE = Path.of("gh-pages/badge/artifact");

    public static void main(String... args) throws Exception {
        update_artifact_badge_data uabd = new update_artifact_badge_data();
        System.out.println("::group:: Projects & Releases");
        Files.walkFileTree(Path.of("content"), uabd);

        System.out.println("::endgroup::");
        uabd.summarize();
        System.out.println();
        uabd.checkOutputTimestamps();
    }

    @Override
    public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
        // skip buildcache content when run in a Git workspace that has been used to rebuild a project
        return dir.endsWith("buildcache") ? FileVisitResult.SKIP_SUBTREE : FileVisitResult.CONTINUE;
    }

    private static final Path MAVEN_METADATA = Path.of("maven-metadata.xml");
    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attr) throws IOException {
        if (file.endsWith(MAVEN_METADATA)) {
            try (InputStream in = Files.newInputStream(file)) {
                updateProject(file.getParent(), new MetadataXpp3Reader().read(in));
            } catch (XmlPullParserException xppe) {
                xppe.printStackTrace();
            }
            return FileVisitResult.CONTINUE;
        }
        return FileVisitResult.CONTINUE;
    }

    private static final Path CONTENT_BASE = Path.of("content");

    private static long projectsCount = 0;
    private static long projectsReleasesCount = 0;
    private static Set<String> ga = new HashSet<>();
    private static long gavCount = 0;

    private void summarize() {
        System.out.print( "based on " + projectsCount + " projects, " + projectsReleasesCount + " releases, ");
        System.out.println(BADGE_ARTIFACT_BASE + ": " + ga.size() + " ga, " + gavCount + " gav");
    }

    private void updateProject(Path path, Metadata metadata) throws IOException {
        System.out.print("    - " + ++projectsCount + "  " + path);

        List<String> filenames;
        try (Stream<Path> walk = Files.walk(path, 1)) {
            filenames = walk.map(p -> p.getFileName().toString()).collect(Collectors.toList());
        }

        List<String> versions = new ArrayList<>();
        Map<String, String> versionsMap = new LinkedHashMap<>();
        Set<String> projectGa = new HashSet<>();
        long projectGav = 0;
        List<String> coordinates = null;
        int ok;
        int ko;

        for(String v: metadata.getVersioning().getVersions()) {
            String buildspec = findFile(filenames, "-" + v + ".buildspec");
            if (buildspec == null) {
                versionsMap.put(v, "?");
                continue;
            }
            versions.add(v);
            projectsReleasesCount++;
            String buildinfo = findFile(filenames, "-" + v + ".buildinfo");
            String buildcompare = findFile(filenames, "-" + v + ".buildcompare");

            // extrapolate from project release to artifacts
            if (buildinfo == null) {
                // build failed: reuse previous coordinates
                System.out.print(" (" + v + ")");
                if (coordinates == null) {
                    // no previous
                    System.out.print("*");
                    continue;
                }
            } else {
                // extract coordinates
                coordinates = Files.readAllLines(path.resolve(buildinfo)).stream().filter(s -> s.contains(".coordinates=")).collect(Collectors.toList());
                if (coordinates.size() == 0) {
                    // mono-module build: project dir = ga
                    coordinates = Arrays.asList("=" + metadata.getGroupId() + ":" + metadata.getArtifactId());
                }
            }

            // read buildcompare
            ok = ko = -1;
            if (buildcompare != null) {
                Path buildcomparePath = path.resolve(buildcompare);
                Properties p = new Properties();
                try (InputStream in = Files.newInputStream(buildcomparePath)) {
                    p.load(in);
                }
                ok = Integer.parseInt(p.getProperty("ok"));
                ko = Integer.parseInt(p.getProperty("ko"));
                //List<String> koFiles = Files.readAllLines(buildcomparePath).stream()
                //    .filter(s -> s.startsWith("# diffoscope"))
                //    .map(s -> s.substring("# diffoscope target/reference/".length(), s.lastIndexOf(' ')))
                //    .collect(Collectors.toList());
                versionsMap.put(v, ok + "/" + (ok + ko));
            } else {
                versionsMap.put(v, "X");
            }

            for(String c: coordinates) {
                c = c.substring(c.indexOf('=') + 1);
                projectGa.add(c);
                gavCount++;
                projectGav++;
                String groupId = c.substring(0, c.indexOf(':'));
                String artifactId = c.substring(groupId.length() + 1);

                // artifact release flag at /badge/artifact/{groupId as dir}/{artifactId}/{version}.flag
                Path artifactBadgePath = BADGE_ARTIFACT_BASE.resolve(groupId.replace('.', '/')).resolve(artifactId);
                Files.createDirectories(artifactBadgePath);
                Files.write(artifactBadgePath.resolve(v + ".flag"), Collections.emptyList());
            }
            ga.addAll(projectGa);
        }

        // index.html for artifacts badges: link to project's README.md and displays badge for each version
        Collections.reverse(metadata.getVersioning().getVersions()); // list versions in descending order
        for(String ga: projectGa) {
            String groupId = ga.substring(0, ga.indexOf(':'));
            String artifactId = ga.substring(groupId.length() + 1);
            Path artifactBadgePath = BADGE_ARTIFACT_BASE.resolve(groupId.replace('.', '/')).resolve(artifactId);

            Set<String> gaVersions;
            try (Stream<Path> walk = Files.walk(artifactBadgePath, 1)) {
                gaVersions = walk.map(p -> p.getFileName().toString())
                    .filter(s -> s.endsWith(".flag"))
                    .map(s -> s.substring(0, s.length() - 5))
                    .collect(Collectors.toSet());
            }

            // artifact badge index at /badge/artifact/{groupId as dir}/{artifactId}.html
            try (BufferedWriter w = Files.newBufferedWriter(artifactBadgePath.getParent().resolve(artifactId + ".html"), StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING)) {
                w.write("<!DOCTYPE html><html><body>");
                w.newLine();
                w.write("<h1>" + ga + "</h1>");
                w.newLine();
                Path p = CONTENT_BASE.relativize(path);
                if (projectGa.size() > 1) {
                    w.write("one module on " + projectGa.size() + " ");
                }
                w.write("built from project <a href=\"https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/" + p + "/README.md\">" + p + "</a></p>");
                w.newLine();
                w.write("<ul>");
                w.newLine();
                for(String v: metadata.getVersioning().getVersions()) {
                    if (gaVersions.contains(v)) {
                        w.write("<li><img src=\"https://img.shields.io/reproducible-central/artifact/" + groupId + '/' + artifactId + '/' + v + "?labelColor=1e5b96\"/>" + v + "</li>");
                        w.newLine();
                    }
                }
                w.write("</ul>");
                w.newLine();
                w.write("</body></html>");
            }

            // new Shields artifact badge json at /badge/artifact/{groupId as dir}/{artifactId}.json
            try (BufferedWriter w = Files.newBufferedWriter(artifactBadgePath.getParent().resolve(artifactId + ".json"), StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING)) {
                w.write("{");
                List<Map.Entry<String, String>> entries = new ArrayList<>(versionsMap.entrySet());
                Collections.reverse(entries);
                boolean first = true;
                for(Map.Entry<String, String> e: entries) {
                    if (first) {
                        first = false;
                    } else {
                        w.write(",");
                    }
                    w.newLine();
                    w.write("\"" + e.getKey() + "\": \"" + e.getValue() + "\"");
                }
                w.newLine();
                w.write("}");
                w.newLine();
            }
        }
        System.out.println("  = " + versions.size() + " versions, " + projectGa.size() + " ga, " + projectGav + " gav");
    }

    private String findFile(List<String> filenames, String endsWith) {
        return filenames.stream().filter(s -> s.endsWith(endsWith)).findFirst().orElse(null);
    }

    private void checkOutputTimestamps() throws IOException {
        System.out.println("::group:: Last 100 missed rebuilds from https://raw.githubusercontent.com/hboutemy/mcmm-logs/refs/heads/master/outputTimestamp.txt");
        Path outputTimestamps = Path.of("outputTimestamp.txt");
        if (!Files.exists(outputTimestamps)) {
            System.out.println("Missing outputTimestamp.txt to check missed rebuilds.");
            return;
        }
        List<String> missed = Files.readAllLines(outputTimestamps).stream()
                .filter(s -> s.endsWith(".pom") && keep(s) && !Files.exists(BADGE_ARTIFACT_BASE.resolve(s.substring(0, s.lastIndexOf('/')) + ".flag")))
                .collect(Collectors.toList());
        missed.subList(missed.size() - 100, missed.size()).stream()
                .forEach(System.out::println);

        Map<String, List<String>> missedGroups = missed.stream()
            .collect(Collectors.groupingBy(s -> s.substring(0, s.lastIndexOf('/', s.lastIndexOf('/') - 1))));
        missedGroups = new TreeMap<>(missedGroups);
        System.out.println("::endgroup::");
        System.out.println("::group:: projects with missing releases");
        int missingReleases = list(missedGroups, s -> Files.exists(BADGE_ARTIFACT_BASE.resolve(s + ".html")));
        System.out.println("::endgroup::");
        System.out.println("=> " + missingReleases + " projects with missing releases.");
        System.out.println("::group:: missed projects:");
        int missingProjects = list(missedGroups, s -> !Files.exists(BADGE_ARTIFACT_BASE.resolve(s + ".html")));
        System.out.println("::endgroup::");
        System.out.println("=> " + missingProjects + " missed projects.");
    }

    private int list(Map<String, List<String>> missedGroups, Predicate<String> p) {
        int count = 0;
        List<String> lastVersions = null;
        for(Map.Entry<String, List<String>> e: missedGroups.entrySet()) {
            if (!p.test(e.getKey())) continue;
            count++;
            int i = e.getKey().length() + 1;
            List<String> versions = e.getValue().stream().map(s -> ' ' + s.substring(i, s.lastIndexOf('/')))
                .collect(Collectors.toList());
            if (versions.equals(lastVersions)) {
                int index = e.getKey().lastIndexOf('/');
                System.out.printf("    %-" + index + "s%s%n", "", e.getKey().substring(e.getKey().lastIndexOf('/')));
                continue;
            }
            lastVersions = versions;
            System.out.print("  - " + e.getKey());
            System.out.print(e.getValue().get(0).substring(i - 1));
            versions.stream().forEach(System.out::print);
            System.out.println();
        }
        return count;
    }

    private static final String[] IGNORE = {
        "ai/platon",
        "com/aoapps/",
        "com/aoindustries/",
        "com/flowlogix/checkstyle",
        "com/flowlogix/infra-pom",
        "com/semanticcms/",
        "com/taobao/arthas/",
        "com/vegardit/maven/vegardit-maven-parent",
        "eu/maveniverse/maven/parent/parent",
        "fr/ebruno/maven/poms/maven-parentpom",
        "io/streamnative",
        "io/wcm",
        "net/osslabz/crypto-commons",
        "org/apache/nifi/nifi-",
        "org/apache/plc4x/plc4j-",
        "org/basepom/",
        "org/finos/legend/engine/",
        "org/glassfish/main/glassfish-main-aggregator/",
        "org/mevenide/mevenide-parent",
        "org/sonatype/buildsupport/"
    };
    private boolean keep(String s) {
        for(String i: IGNORE) {
            if (s.startsWith(i)) {
                return false;
            }
        }
        return true;
    }
}
