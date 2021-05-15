#!/usr/bin/env bash

compare=$1
builddir=$2

diffoscope_file=$(dirname ${compare})/$(basename ${compare} .buildinfo.compare).diffoscope

echo -e "saving build diffoscope file to \033[1m${diffoscope_file}\033[0m"

grep '# diffoscope ' ${compare} | sed -e 's/# diffoscope //' | ( while read -r line
do
  echo -e "\033[1m$line\033[0m"
  docker run --rm -t -w /mnt -v $(pwd)/$(dirname ${compare})/${builddir}:/mnt:ro registry.salsa.debian.org/reproducible-builds/diffoscope --no-progress $line
  echo
done ) | tee ${diffoscope_file}

# remove ansi escape codes from file
sed -i 's/\x1b\[[0-9;]*m//g' ${diffoscope_file}

echo -e "build diffoscope file saved to \033[1m${diffoscope_file}\033[0m"
