#!/usr/bin/env bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

. "${SCRIPTDIR}/bin/includes/bashcolors.sh"
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

info "Rebuilding from spec \033[1m${buildspec}\033[0m"

. ${buildspec} || fatal "could not source ${buildspec}"

displayMandatory "groupId"
displayMandatory "artifactId"
displayMandatory "version"
if [ -z "${sourceDistribution}" ]
then
  displayMandatory "gitRepo"
  displayMandatory "gitTag"
else
  displayMandatory "sourceDistribution"
fi
displayMandatory "tool"
displayMandatory "jdk"
displayMandatory "newline"
displayMandatory "command"
displayMandatory "buildinfo"

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
