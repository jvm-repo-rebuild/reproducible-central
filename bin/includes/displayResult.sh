#!/usr/bin/env bash

displayResult() {
  local buildcompare version ok ko okFiles koFiles reference_java_version reference_os_name
  buildcompare="$(dirname "${buildinfo}")/$(basename ${buildinfo} .buildinfo).buildcompare"

  info "rebuild from \033[1m${buildspec}\033[0m"
  local compare=""
  for f in ${buildcompare}
  do
    compare=$f
    info "  results in \033[1m$(dirname ${buildspec})/$(basename $f .buildcompare).buildinfo\033[0m"
    info "compared to Central Repository \033[1m$(dirname ${buildspec})/$(basename $f)\033[0m:"
  done
  . ${buildcompare}
  if [[ ${ko} -gt 0 ]]
  then
    echo -e "           ok=${ok}"
    echo -e "           okFiles=\"${okFiles}\""
    echo -e "           \033[31;1mko=${ko}\033[0m"
    echo -e "           koFiles=\"${koFiles}\""
    if [ -n "${reference_java_version}" ]
    then
      info "    check .buildspec \033[1mjdk=${jdk}\033[0m vs reference \033[1mjava.version=${reference_java_version}\033[0m"
    fi
    if [ -n "${reference_os_name}" ]
    then
      info "    check .buildspec \033[1mnewline=${newline}\033[0m vs reference \033[1mos.name=${reference_os_name}\033[0m (newline should be crlf if os.name is Windows, lf instead)"
    fi
    info "build available in \033[1m$(dirname ${buildspec})/buildcache/${artifactId}\033[0m, where you can execute \033[36mdiffoscope\033[0m"
    grep '# diffoscope ' ${buildcompare}
#    echo -e "run \033[36mdiffoscope\033[0m as container with \033[1mdocker run --rm -t -w /mnt -v $(pwd):/mnt:ro registry.salsa.debian.org/reproducible-builds/diffoscope\033[0m"
    info "To see every differences between current rebuild and reference, run:"
    if [ -z "${sourcePath}" ]
    then
      info "    \033[1m./build_diffoscope.sh $(dirname ${buildspec})/$(basename ${compare}) buildcache/${artifactId}\033[0m"
    else
      info "    \033[1m./build_diffoscope.sh $(dirname ${buildspec})/$(basename ${compare}) buildcache/${sourcePath}\033[0m"
    fi
  else
    echo -e "    \033[32;1mok=${ok}\033[0m"
    echo -e "    okFiles=\"${okFiles}\""
  fi

  if [[ ${buildspec} == wip/* ]]
  then
    echo -e "\033[93mWork In Progress\033[0m: once work is ready to be published, move it to target directory with \033[1mdir=content/$(echo ${groupId} | tr '.' '/')/${artifactId} ; mkdir -p \${dir} ; mv wip/$(basename ${buildinfo} .buildinfo).build* \${dir} \033[0m"
  fi
}
