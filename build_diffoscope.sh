#!/usr/bin/env bash

# path to .buildcompare file
compare=${1:-./default.buildcompare}
# relative path to source code, usually buildcache/${artifactId}
builddir=${2:-./}

diffoscope_file=$(dirname ${compare})/$(basename ${compare} .buildcompare).diffoscope
count="$(grep "^# diffoscope" ${compare} | wc -l)"

run_diffoscope() {
  if $(which -s diffoscope)
  then
    (
      cd $(pwd)/$(dirname ${compare})/${builddir}
      diffoscope $*
    )
  else
    docker run --rm -w /mnt -v $(pwd)/$(dirname ${compare})/${builddir}:/mnt:ro ghcr.io/jvm-repo-rebuild/diffoscope $*
  fi
}

if [ $count -eq 0 ]
then
  echo "No diffoscope command listed in '$1'"
  echo
  echo "diffoscope --version (https://diffoscope.org/ https://salsa.debian.org/reproducible-builds/diffoscope/-/tags)"
  run_diffoscope --version
  exit
fi

echo -e "saving build diffoscope file to \033[1m${diffoscope_file}\033[0m for $count issues"

sed="sed"
if [ "$(uname -s)" ==  "Darwin" ]
then
  command -v gsed >/dev/null 2>&1 || { echo "require GNU sed: brew install gsed  Aborting."; exit 1; }
  sed="gsed"
fi

counter=0
grep '# diffoscope ' ${compare} | ${sed} -e 's/# diffoscope //' | ( while read -r line
do
  ((counter++))
  echo -e "$counter / $count \033[1m$line\033[0m"
  run_diffoscope --no-progress --exclude META-INF/jandex.idx $line
  echo
done ) | tee ${diffoscope_file}

# remove ansi escape codes from file
${sed} -i 's/\x1b\[[0-9;]*m//g' ${diffoscope_file}

echo -e "build diffoscope file saved to \033[1m${diffoscope_file}\033[0m"
du -h ${diffoscope_file}
