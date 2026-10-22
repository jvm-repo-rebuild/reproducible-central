How to Rebuild?
===============

Run all steps from `buildcache/lz4-java`

## STEP 1: rebuild native code on GHA

prepare Git tag on personal GH repo:

    git remote add hb https://github.com/hboutemy/lz4-java.git
    git push --tags hb

run GHA workflow on Git tag:
 https://github.com/hboutemy/lz4-java/actions/workflows/build-all-and-publish.yml


## STEP 2: get native binaries from GHA

download resulting native binaries (Linux, MacOS, Windows) to `assemble/natives` https://github.com/hboutemy/lz4-java/blob/main/.github/workflows/build-all-and-publish.yml#L243

```
\rm -rf assemble
mkdir -p assemble/natives
mv ~/Downloads/natives-*.zip assemble
for f in assemble/natives-*.zip
do
  printf "%-30s\t%s\t%s\n" $(basename $f) $(du -k $f | cut -f 1) $(sha256sum $f | cut -d / -f 1)
done

for f in assemble/natives-*.zip
do
  dir=assemble/natives/$(basename $f .zip)
  mkdir $dir
  unzip $f -d $dir
  find $dir -type f -exec chmod a-x {} \;
done
```

## STEP 3: initial build

require JDK 7 available in `~/.m2/toolchains.xml`

    mvn -B -V -DskipTests clean package -P'!native-macos,!native-linux'


## STEP 4:

Run the shell part of the workflow https://github.com/hboutemy/lz4-java/blob/main/.github/workflows/build-all-and-publish.yml#L256


## STEP 5: run the build command with `artifact:compare`

as proposed initially by `rebuild.sh`
