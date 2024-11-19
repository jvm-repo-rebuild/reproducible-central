///usr/bin/env jbang "$0" "$@" ; exit $?

//DEPS org.apache.maven:maven-repository-metadata:3.9.9

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
import java.util.Optional;
import java.util.Properties;
import java.util.Set;
import java.util.TreeMap;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.apache.maven.artifact.repository.metadata.Metadata;
import org.apache.maven.artifact.repository.metadata.io.xpp3.MetadataXpp3Reader;

import org.codehaus.plexus.util.xml.pull.XmlPullParserException;

public class update_api extends SimpleFileVisitor<Path> {
    public static void main(String... args) throws Exception {
        update_api u = new update_api();
        Files.walkFileTree(Path.of("content"), u);
        u.summarize();
        u.checkOutputTimestamps();
    }

    @Override
    public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
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
    private static final Path API_PROJECT_BASE = Path.of("gh-pages/api/project");
    private static final Path API_ARTIFACT_BASE = Path.of("gh-pages/api/artifact");
    private static final Path BADGE_PROJECT_BASE = Path.of("gh-pages/badge/project");
    private static final Path BADGE_ARTIFACT_BASE = Path.of("gh-pages/badge/artifact");

    private static long projectsCount = 0;
    private static long projectsReleasesCount = 0;
    private static Set<String> ga = new HashSet<>();
    private static long gavCount = 0;

    private void summarize() {
        System.out.println(API_PROJECT_BASE + ": " + projectsCount + " projects, " + projectsReleasesCount + " releases");
        System.out.println(API_ARTIFACT_BASE + ": " + ga.size() + " ga, " + gavCount + " gav");
    }

    private void updateProject(Path path, Metadata metadata) throws IOException {
        System.out.print(++projectsCount + " " + path);
        Path project = API_PROJECT_BASE.resolve(CONTENT_BASE.relativize(path));
        Files.createDirectories(project);

        List<String> filenames;
        try (Stream<Path> walk = Files.walk(path, 1)) {
            filenames = walk.map(p -> p.getFileName().toString()).collect(Collectors.toList());
        }

        List<String> versions = new ArrayList<>();
        Set<String> projectGa = new HashSet<>();
        long projectGav = 0;
        List<String> coordinates = null;
        int ok;
        int ko;

        for(String v: metadata.getVersioning().getVersions()) {
            String buildspec = findFile(filenames, "-" + v + ".buildspec");
            if (buildspec == null) {
                continue;
            }
            versions.add(v);
            projectsReleasesCount++;
            String buildinfo = findFile(filenames, "-" + v + ".buildinfo");
            String buildcompare = findFile(filenames, "-" + v + ".buildcompare");

            // TODO define what to save for project release json file
            Files.write(project.resolve(v + ".txt"), Arrays.asList(buildspec, buildinfo, buildcompare));

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
            }

            Path badge = writeBadge(BADGE_PROJECT_BASE.resolve(CONTENT_BASE.relativize(path)).resolve(v + ".json"), ok, ko);

            for(String c: coordinates) {
                c = c.substring(c.indexOf('=') + 1);
                projectGa.add(c);
                gavCount++;
                projectGav++;
                String groupId = c.substring(0, c.indexOf(':'));
                String artifactId = c.substring(groupId.length() + 1);

                Path artifactPath = API_ARTIFACT_BASE.resolve(groupId.replace('.', '/')).resolve(artifactId);
                Files.createDirectories(artifactPath);
                Files.write(artifactPath.resolve(v + ".txt"), Arrays.asList(CONTENT_BASE.relativize(path).toString()));

                Path badgePath = BADGE_ARTIFACT_BASE.resolve(groupId.replace('.', '/')).resolve(artifactId);
                Files.createDirectories(badgePath);
                Files.copy(badge, badgePath.resolve(v + ".json"), StandardCopyOption.REPLACE_EXISTING);
            }
            ga.addAll(projectGa);
        }
        // TODO define what to save for project index of releases  json file
        Files.write(project.resolve("index.txt"), versions);
        System.out.println(" " + versions.size() + " versions, " + projectGa.size() + " ga, " + projectGav + " gav");
    }

    private String findFile(List<String> filenames, String endsWith) {
        return filenames.stream().filter(s -> s.endsWith(endsWith)).findFirst().orElse(null);
    }

    private Path writeBadge(Path badgePath, int ok, int ko) throws IOException {
        String message = (ok < 0) ? "X" : (ok + "/" + (ok + ko));
        String color = (ko == 0) ? "green" : ((ko < ok) ? "yellow" : "red");
        Files.createDirectories(badgePath.getParent());
        Files.write(badgePath, Arrays.asList("{ \"schemaVersion\": 1,",
            "  \"label\": \"Reproducible Builds\",",
            "  \"labelColor\": \"1e5b96\",",
            "  \"message\": \"" + message + "\",",
            "  \"color\": \"" + color + "\",",
            "  \"isError\": \"true\" }"));
        return badgePath;
    }

    private void checkOutputTimestamps() throws IOException {
        Path outputTimestamps = Path.of("outputTimestamp.txt");
        if (!Files.exists(outputTimestamps)) {
            System.out.println("Missing outputTimestamp.txt to check missed rebuilds.");
            return;
        }
        List<String> missed = Files.readAllLines(outputTimestamps).stream()
                .filter(s -> s.contains("/") && keep(s) && !Files.exists(API_ARTIFACT_BASE.resolve(s.substring(0, s.lastIndexOf('/')) + ".txt")))
                .collect(Collectors.toList());
        missed.subList(missed.size() - 100, missed.size()).stream()
                .forEach(System.out::println);
    }

    private static final String[] IGNORE = {
        "com/flowlogix/checkstyle",
        "com/flowlogix/infra-pom",
        "com/taobao/arthas/",
        "net/osslabz/crypto-commons",
        "org/finos/legend/engine/"
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
