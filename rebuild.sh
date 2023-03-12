#!/usr/bin/env bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

. "${SCRIPTDIR}/bin/includes/logging.sh"

. "${SCRIPTDIR}/bin/includes/fetchSource.sh"

. "${SCRIPTDIR}/bin/includes/rebuildToolMvn.sh"
. "${SCRIPTDIR}/bin/includes/rebuildToolSbt.sh"
. "${SCRIPTDIR}/bin/includes/rebuildToolGradle.sh"

. "${SCRIPTDIR}/bin/includes/displayResult.sh"

# ----------------------------------------------------------------------------------------------------

buildspec=$1
if [ -z "${buildspec}" ]
then
  fatal "usage: buildspec"
fi

echo -e "Rebuilding from spec \033[1m${buildspec}\033[0m"

. ${buildspec} || fatal "could not source ${buildspec}"

display "groupId"
display "artifactId"
display "version"
if [ -z "${sourceDistribution}" ]
then
  display "gitRepo"
  display "gitTag"
else
  display "sourceDistribution"
fi
display "tool"
display "jdk"
display "newline"
display "command"
display "buildinfo"

base="$SCRIPTDIR"

pushd `dirname ${buildspec}` >/dev/null || fatal "could not move into ${buildspec}"

fetchSource

case ${tool} in
  mvn*)
    rebuildToolMvn
    ;;
  sbt)
    rebuildToolSbt
    ;;
  gradle)
    rebuildToolGradle
    ;;
  *)
    fatal "build tool not yet supported: ${tool}"
esac

echo
displayResult

#git reset --hard

popd > /dev/null || fatal "Unable to return to starting directory"
