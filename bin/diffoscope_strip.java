///usr/bin/env jbang "$0" "$@" ; exit $?

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.stream.Stream;

public class diffoscope_strip {
    public static void main(String... args) throws Exception {
        new diffoscope_strip().filter(args[0]);
    }

    private void filter(String filename) throws Exception {
        try (Stream<String> stream = Files.lines(Paths.get(filename))) {
            stream
                .filter(this::stripZipdetails)
                .filter(this::stripNested)
                .forEach(System.out::println);
        }
    }

    private boolean zipdetails = false;
    private boolean stripZipdetails(String line) {
        if (zipdetails) {
            // detect end of zipdetails
            if (line.endsWith("# Done")) {
                zipdetails = false;
                return false;
            }
        } else {
            // detect start of zipdetails
            if (line.contains("zipdetails --redact --scan --utc {}")) {
                zipdetails = true;
            }
        }
        return !zipdetails;
    }

    private boolean stripNested(String line) {
        return !line.startsWith("│ │ │ ");
    }
}
