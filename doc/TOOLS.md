Tools and methods allowing to verify that Java builds are reproducible
====================================================

As part of [Reproducible Builds efforts for the JVM](https://reproducible-builds.org/docs/jvm/), this "**Reproducible Central**" project attempts to:
1. **[Write `.buildspec`rebuild instructions](BUILDSPEC.md)** for the artifacts available in the [Central Repository](https://search.maven.org/),
equivalent to the packaging instructions that are maintained by every Linux distribution
(for example Debian's [debian/rules](https://www.debian.org/doc/debian-policy/ch-source#s-debianrules) or ArchLinux's PKGBUILD), whatever the build tool used (Central Repository is not used by Maven only)
2.  **Evaluate the level of reproducibility** obtained using previous instructions. How many output files from the rebuild are strictly equal to the reference in Central Repository? How many output files are not yet reproducible and should be improved before the next release?

## Reproducible journey

If you want to start playing with the reproducible builds, we recommend the following steps.

### 1) Rebuild Yourself To Check Results

Prerequisites:
* [Docker](https://www.docker.com) or [Podman](https://podman.io)
* `dos2unix` - DOS to MAC/UNIX text file format converter. \
   Can be installed via [homebrew](https://brew.sh) on MAC via: `brew install dos2unix`.

You can rebuild a project release by running:
```
./rebuild.sh content/<path/to/...>/<project>-<version>.buildspec
```
[`rebuild.sh` script](./rebuild.sh) will use the build specification file (= [`.buildspec` file](BUILDSPEC.md)) to choose a Docker image to rebuild the project and check output against Central Repository reference binaries: comparison result is displayed on console and stored in `.buildcompare` file.

Advanced case: most builds done [with `mvn`](https://github.com/search?q=repo%3Ajvm-repo-rebuild%2Freproducible-central+path%3A.buildspec+command%3D%22mvn&type=code) or [with `gradle`](https://github.com/search?q=repo%3Ajvm-repo-rebuild%2Freproducible-central+path%3A.buildspec+command%3D%22.%2Fgradlew&type=code) are containerized for ease of use (buidl tools setup is done in the container), but some advanced `.buildspec` [marked with `command="SHELL`](https://github.com/search?q=repo%3Ajvm-repo-rebuild%2Freproducible-central%20command%3D%22SHELL&type=code) cannot run in a container (for various reasons). They will require more manual steps and more environment setup (details to be documented later...): please learn with containerized builds before diving into more advanced scenario.


For example:
```
./rebuild.sh content/org/apache/maven/shared/archiver/maven-archiver-3.5.1.buildspec
```

You can also use `podman` as a container engine by defining these environment variables before you run `rebuild.sh`:

    # The engine to use. Defaults to 'docker', but also tested with 'podman'.
    RB_OCI_ENGINE
    
    # Extra build-options to provide to the container engine. Defaults for docker: "", podman: "--format docker"
    RB_OCI_ENGINE_BUILD_OPTS
    
    # Extra run-options to provide to the container engine. Defaults for docker: "", podman: "--userns=keep-id"
    RB_OCI_ENGINE_RUN_OPTS
    
    # Extra flags to use when mounting volumes in the container. Defaults to "", but for podman running on an SELinux host, you need ":Z,rw"
    RB_OCI_VOLUME_FLAGS


### 2) Contribute to a new _buildspec_

If you know of a project released to Central Repository that has enabled Reproducible Builds (see [Configuring Build Tools for Reproducible Builds](https://reproducible-builds.org/docs/jvm/#configuring-build-tools-for-reproducible-builds)), please tell us by opening an issue with details.

You can also choose one from our [list of projects waiting for a `.buildspec`](https://github.com/jvm-repo-rebuild/reproducible-central/labels/buildspec): follow our [instructions to write a new `.buildspec`)](BUILDSPEC.md#writing-a-new-buildspec) that you can contribute back with a PR.


### 3) Improve Reproducibility Score Of A Project Release

If a rebuild published here is not fully reproducible (it still has some :warning: after having applied [Configuring Build Tools for Reproducible Builds](https://reproducible-builds.org/docs/jvm/#configuring-build-tools-for-reproducible-builds)), there is an issue: please help to improve the situation.

You'll need to rebuild the release yourself (see previous instructions), then use [diffoscope](https://diffoscope.org/) :mag: to easily explore the precise difference
between the reference file from Central Repository and the effective rebuild file, then debug up to the root cause of this unwanted difference:
- rebuilder bug: if the improvement has to happen at [buildspec](BUILDSPEC.md) or [rebuild script](rebuild.sh) level, don't hesitate to open an issue or a PR here,
- upstream project reproducibility issue :memo:: please contact the upstream project and help them improve the reproducibility for their next release, creating an issue in their issue tracker and adding it to Reproducible Central buildspec as `issue` parameter that will link to it with a :memo:.



### 4) Add Reproducible Builds Badge to a Project

Once a project is listed here, a badge endpoint is provided to display proven reproducibility success level: it provides a badge like ![Reproducible Builds](https://img.shields.io/badge/Reproducible_Builds-5/5-success?labelColor=1e5b96) pointing to its `README.md`:

Example for Markdown:
```
[![Reproducible Builds](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fjvm-repo-rebuild%2Freproducible-central%2Fmaster%2F...path to project directory...%2Fbadge.json)](https://github.com/jvm-repo-rebuild/reproducible-central/blob/master/content/...path to project directory.../README.md)
```

This uses the [Endpoint Badge from shields.io](https://shields.io/badges/endpoint-badge) for rendering the image.
