#!/usr/bin/env bash

stabilize () {
  file=$1
  go install github.com/google/oss-rebuild/cmd/stabilize@main
  ~/go/bin/stabilize -infile $file -outfile $file.stabilized
  if [ $? -ne 0 ]; then
    echo "Stabilize failed for $file"
    exit 1
  fi
  echo "Result: $file.stabilized"
}

# path to .buildcompare file
compare=$1
# relative path to source code, usually buildcache/${artifactId}
builddir=$2

diffoscope_file=$(dirname ${compare})/$(basename ${compare} .buildcompare).oss-rebuild.diffoscope
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

  reference=$(echo "$line" | cut -d' ' -f1)
  rebuild=$(echo "$line" | cut -d' ' -f2)
  echo "Reference: $reference"
  echo "Rebuild: $rebuild"
  
  echo -e "$counter / $count \033[1m$line\033[0m"

  stabilize ${builddir}/$reference
  stabilize ${builddir}/$rebuild

  reference_stabilized=$reference.stabilized
  rebuild_stabilized=$rebuild.stabilized

  if $(which -s diffoscope)
  then
    (
      cd $(pwd)/${builddir}
      diffoscope --no-progress --exclude META-INF/jandex.idx --text stabilized.diffoscope --output-empty $reference_stabilized $rebuild_stabilized
    )
  else
    docker run --rm -w /mnt -v $(pwd)/${builddir}:/mnt ghcr.io/jvm-repo-rebuild/diffoscope --no-progress --exclude META-INF/jandex.idx --text stabilized.diffoscope --output-empty $reference_stabilized $rebuild_stabilized
  fi
  cat $(pwd)/${builddir}/stabilized.diffoscope >> ${diffoscope_file}
  echo
done )

# remove ansi escape codes from file
${sed} -i 's/\x1b\[[0-9;]*m//g' ${diffoscope_file}

echo -e "build diffoscope file saved to \033[1m${diffoscope_file}\033[0m"
du -h ${diffoscope_file}
