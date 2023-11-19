#!/usr/bin/env bash

# output comparison against Maven Central content
# looks into content in outputDir (expected to be Maven repository format)
# fetches associated reference files from Maven Central and stores to central/ directory
# compares and store results in buildinfo + buildcompare files
#
# equivalent in BASH of Maven's artifact:compare goal https://maven.apache.org/plugins/maven-artifact-plugin/compare-mojo.html
# but usable when other build tool than Maven is used
compareOutput() {
  local outputDir=$1

  ### 1. display list of .pom files found
  info "looking for *.pom content in ${outputDir}/ directory:"
  ( set -x ; find ${outputDir} -type f -name "*.pom" | cut -c 12- | sort )
  echo

  ### 2. generate .buildinfo, fetch content from Maven Central, compare
  buildcompare="$(basename ${buildinfo} .buildinfo).buildcompare"
  info "computing ${buildinfo} from content in ${outputDir}/ directory, downloading equivalent from Maven Central to central/, and comparing: results to ${buildcompare}"

  # 
  echo "name=${display}" > ${buildinfo}
  echo "group-id=${groupId}" >> ${buildinfo}
  echo "artifact-id=${artifactId}" >> ${buildinfo}
  echo >> ${buildinfo}
  echo "build-tool=${tool}" >> ${buildinfo}
  echo "java.version=${jdk}" >> ${buildinfo}
  echo "os.name=${newline}" >> ${buildinfo}

  local ok=()
  local okFiles=()
  local ko=()
  local koFiles=()
  local n=0
  local i=0

  [ -d central ] && \rm -rf central
  # look for .pom files in ${outputDir}/ to detect GAV directory
  for pom in $(find ${outputDir} -type f -name "*.pom" | cut -c 12- | sort)
  do
    ((n++))
    d=$(dirname $pom)
    [ -d central/$d ] || mkdir -p central/$d
    ga_dir=$(dirname $d)
    g_dir=$(dirname $ga_dir)

    echo >> ${buildinfo}
    echo "outputs.${n}.coordinates=$(echo "$g_dir" | sed s_/_._g):$(basename $ga_dir)" >> ${buildinfo}
    echo >> ${buildinfo}

    i=0
    # look for artifacts in GAV directory (skip -javadoc.jar)
    for f in `find ${outputDir}/$d -maxdepth 1 -type f | grep -v "\-javadoc.jar$" | grep -v ".asc$" | grep -v ".md5$" | grep -v ".sha1$" | grep -v ".sha256$" | grep -v ".sha512$" | cut -c 12- | sort`
    do
      # fetch reference file from Maven Central to central/
      echo -ne "downloading reference to central/$f                              \r"
      wget -q https://repo.maven.apache.org/maven2/$f -O central/$f

      echo "outputs.${n}.${i}.filename=$(basename $f)" >> ${buildinfo}
      echo "outputs.${n}.${i}.length=$(du -b ${outputDir}/$f | cut -f 1)" >> ${buildinfo}
      echo "outputs.${n}.${i}.checksums.sha512=$(sha512sum ${outputDir}/$f | cut -f 1)" >> ${buildinfo}
      echo >> ${buildinfo}
      ((i++))

      diff -q ${outputDir}/$f central/$f > /dev/null
      if [ $? -eq 0 ]
      then
        ok+=($f)
        okFiles+=( $(basename $f) )
      else
        ko+=($f)
        koFiles+=( $(basename $f) )
      fi
    done
  done

  # generate .buildcompare
  buildcompare="$(basename ${buildinfo} .buildinfo).buildcompare"
  echo "version=${version}" > ${buildcompare}
  echo "ok=${#ok[@]}" >> ${buildcompare}
  echo "ko=${#ko[@]}" >> ${buildcompare}
  echo "okFiles=\"${okFiles[@]}\"" >> ${buildcompare}
  echo "koFiles=\"${koFiles[@]}\"" >> ${buildcompare}
  # TODO reference_java_version
  # TODO reference_os_name
  for f in ${ko[@]}
  do
    echo "# diffoscope ${outputDir}/$f central/$f" >> ${buildcompare}
  done

  cp ${buildinfo} ../.. || fatal "failed to copy buildinfo file"
  cp ${buildcompare} ../.. || fatal "failed to copy buildcompare file"
}