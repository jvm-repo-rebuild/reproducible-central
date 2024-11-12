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
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TreeMap;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.apache.maven.artifact.repository.metadata.Metadata;
import org.apache.maven.artifact.repository.metadata.io.xpp3.MetadataXpp3Reader;

import org.codehaus.plexus.util.xml.pull.XmlPullParserException;

public class update_api extends SimpleFileVisitor<Path> {
    public static void main(String... args) throws Exception {
        Files.walkFileTree(Path.of("content"), new update_api());
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

    private void updateProject(Path path, Metadata metadata) throws IOException {
        System.out.println(path);
        for(String v: metadata.getVersioning().getVersions()) {
            Optional<Path> o = Files.walk(path, 1).filter(p -> p.getFileName().toString().endsWith("-" + v + ".buildspec")).findFirst();
            if (!o.isPresent()) {
                continue;
            }
            Path buildspec = o.get();
            System.out.println("     " + buildspec.getFileName());
            //Path buildinfo = Files.walk(path, 0).filter(p -> p.endsWith("-" + v + ".buildinfo")).findFirst();
            //Path buildcompare = Files.walk(path, 0).filter(p -> p.endsWith("-" + v + ".buildcompare")).findFirst().get();
        }
    }
}
