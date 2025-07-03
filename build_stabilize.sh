#!/usr/bin/env bash

# run oss-rebuild's stabilize command on every non-reproducible files
# append stabilize results to .buildcompare

# path to .buildcompare file
compare=$1
# relative path to source code, usually buildcache/${artifactId}
builddir=$2

stabilize () {
  file=$1
  [ -x ~/go/bin/stabilize ] || go install github.com/google/oss-rebuild/cmd/stabilize@dbdf78a8d293311c42192d40f72db0e54b63334b
  echo "stabilize -infile $file"
  ~/go/bin/stabilize -infile $file -outfile $file.stabilized
  if [ $? -ne 0 ]; then
    echo "Stabilize failed for $file"
  fi
  sha1sum $file.stabilized
}

count="$(grep "^# diffoscope" ${compare} | wc -l)"

[ $count -eq 0 ] && echo "No issue found in $compare" && exit

echo -e "running stabilize on $no non-native reproducible artifacts"

sed="sed"
if [ "$(uname -s)" ==  "Darwin" ]
then
  command -v gsed >/dev/null 2>&1 || { echo "require GNU sed: brew install gsed  Aborting."; exit 1; }
  sed="gsed"
fi

counter=0
stabilize_ok=0
stabilize_ko=0
stabilize_okFiles=""
stabilize_koFiles=""
stabilize_ignored=0
stabilize_ignoredFiles=""
basedir="$(dirname ${compare})/${builddir}"
while read -r line; do
  ((counter++))

  reference=$(echo "$line" | cut -d' ' -f1)
  rebuild=$(echo "$line" | cut -d' ' -f2)
  
  echo -e "$counter / $count \033[1m$line\033[0m"

  stabilize ${basedir}/$reference
  stabilize ${basedir}/$rebuild

  reference_stabilized=$reference.stabilized
  rebuild_stabilized=$rebuild.stabilized

  if [ ! -f ${basedir}/$reference_stabilized ] || [ ! -f ${basedir}/$rebuild_stabilized ]
  then
    ((stabilize_ignored++))
    stabilize_ignoredFiles+=$(basename $reference_stabilized)' '
  else
    diff -q ${basedir}/$reference_stabilized ${basedir}/$rebuild_stabilized
    if [ $? -eq 0 ]
    then
      ((stabilize_ok++))
      stabilize_okFiles+=$(basename $reference_stabilized)' '
    else
      ((stabilize_ko++))
      stabilize_koFiles+=$(basename $reference_stabilized)' '
      echo "# diffoscope $rebuild_stabilized $reference_stabilized"
    fi
  fi
  echo
done < <(grep '# diffoscope ' ${compare} | ${sed} -e 's/# diffoscope //')

echo "stabilize_ok=$stabilize_ok
stabilize_ko=$stabilize_ko
stabilize_ignored=$stabilize_ignored
stabilize_okFiles=\"$( echo $stabilize_okFiles )\"
stabilize_koFiles=\"$( echo $stabilize_koFiles )\"
stabilize_ignoredFiles=\"$( echo $stabilize_ignoredFiles )\"" >> $compare
