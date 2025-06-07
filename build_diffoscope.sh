#!/usr/bin/env bash

# path to .buildcompare file
compare=$1
# relative path to source code, usually buildcache/${artifactId}
builddir=$2

diffoscope_file=$(dirname ${compare})/$(basename ${compare} .buildcompare).diffoscope
count="$(grep "^# diffoscope" ${compare} | wc -l)"

[ $count -eq 0 ] && echo "No diffoscope command listed in $compare" && exit

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
  if $(which -s diffoscope)
  then
    (
      cd $(pwd)/$(dirname ${compare})/${builddir}
      diffoscope --no-progress --exclude META-INF/jandex.idx $line
    )
  else
    docker run --rm -w /mnt -v $(pwd)/$(dirname ${compare})/${builddir}:/mnt:ro ghcr.io/jvm-repo-rebuild/diffoscope --no-progress --exclude META-INF/jandex.idx $line
  fi
  echo
done ) | tee ${diffoscope_file}

# remove ansi escape codes from file
${sed} -i 's/\x1b\[[0-9;]*m//g' ${diffoscope_file}

echo -e "build diffoscope file saved to \033[1m${diffoscope_file}\033[0m"
du -h ${diffoscope_file}
