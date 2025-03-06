#!/usr/bin/env bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

. "${SCRIPTDIR}/bin/includes/bashcolors.sh"
. "${SCRIPTDIR}/bin/includes/logging.sh"

. "${SCRIPTDIR}/bin/includes/fetchSource.sh"
. "${SCRIPTDIR}/bin/includes/compareOutput.sh"

. "${SCRIPTDIR}/bin/includes/rebuildToolMvn.sh"
. "${SCRIPTDIR}/bin/includes/rebuildToolSbt.sh"
. "${SCRIPTDIR}/bin/includes/rebuildToolGradle.sh"

. "${SCRIPTDIR}/bin/includes/displayResult.sh"

# ----------------------------------------------------------------------------------------------------

buildspec=$1
if [ -z "${buildspec}" ]
then
  fatal "usage: rebuild.sh <file>.buildspec [staging|snapshot]"
fi
if [ -n "$2" ]
then
  referenceRepo=https://repository.apache.org/content/repositories/$2/
fi

echo -e "Rebuilding from buildspec \033[1m${buildspec}\033[0m"

. ${buildspec} || fatal "could not source ${buildspec}"

# The defaults when unspecified
DEFAULT_locale="en_US"
DEFAULT_timezone="UTC"
DEFAULT_umask=0002
DEFAULT_referenceRepo="https://repo.maven.apache.org/maven2/"

DEFAULT_oci_engine="docker"
DEFAULT_docker_build_opts=""
DEFAULT_podman_build_opts="--format docker"
DEFAULT_docker_run_opts=""
DEFAULT_podman_run_opts="--userns=keep-id"
DEFAULT_oci_engine_volumeflags=""
DEFAULT_oci_engine_build_opts="$([[ 'docker' == ${RB_OCI_ENGINE:-$DEFAULT_oci_engine} ]] && echo $DEFAULT_docker_build_opts || echo $DEFAULT_podman_build_opts)"
DEFAULT_oci_engine_run_opts="$([[ 'docker' == ${RB_OCI_ENGINE:-$DEFAULT_oci_engine} ]] && echo $DEFAULT_docker_run_opts || echo $DEFAULT_podman_run_opts)"

echo "| 1. rebuild what binaries?"
displayOptional  "referenceRepo" "$DEFAULT_referenceRepo"
displayMandatory "groupId"
displayMandatory "artifactId"
displayMandatory "version"
echo "| 2. from which sources?"
if [ -z "${sourceDistribution}" ]
then
  displayMandatory "gitRepo"
  displayMandatory "gitTag"
else
  displayMandatory "sourceDistribution"
fi
echo "| 3. with which rebuild environment?"
displayMandatory "tool"
displayMandatory "jdk"
displayOptional  "toolchains"
displayMandatory "newline"
displayOptional  "timezone"    "$DEFAULT_timezone"
displayOptional  "locale"      "$DEFAULT_locale"
displayOptional  "umask"       "$DEFAULT_umask"
displayOptional  "os"
displayOptional  "arch"
echo "| 4. how?"
displayMandatory "command"
[ -n "${RB_SHELL}" ] && RB_OCI_ENGINE="interactive shell"
displayOptional  "RB_OCI_ENGINE" "$DEFAULT_oci_engine"
displayOptional  "execBefore"
displayOptional  "execAfter"
echo "| 5. expected results?"
displayMandatory "buildinfo"
displayOptional  "diffoscope"
displayOptional  "issue"

[ -z "${timezone}" ] && timezone=$DEFAULT_timezone
[ -z "${locale}" ] && locale=$DEFAULT_locale
[ -z "${umask}" ] && umask=$DEFAULT_umask
[ -z "${RB_OCI_ENGINE}" ] && export RB_OCI_ENGINE=$DEFAULT_oci_engine
[ -z "${RB_OCI_ENGINE_BUILD_OPTS}" ] && export RB_OCI_ENGINE_BUILD_OPTS=$DEFAULT_oci_engine_build_opts
[ -z "${RB_OCI_ENGINE_RUN_OPTS}" ] && export RB_OCI_ENGINE_RUN_OPTS=$DEFAULT_oci_engine_run_opts
[ -z "${RB_OCI_VOLUME_FLAGS}" ] && export RB_OCI_VOLUME_FLAGS=$DEFAULT_oci_engine_volume_flags

base="$SCRIPTDIR"

pushd "$(dirname ${buildspec})" >/dev/null || fatal "Could not move into ${buildspec}"

echo
# set umask for the script execution itself because Git updates are better with target umask
umask $umask
export MVN_UMASK=${umask}
fetchSource

[ -n "$execBefore" ] && info "executing before command: $execBefore" && eval "$execBefore"

echo
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

pomFile=$(echo "$command" | grep -oP '(?<=-f )[^ ]+')
if [ -n "$pomFile" ]; then
  displayResult $(dirname $pomFile)
else
  displayResult ""
fi

displayOptional  "os"
displayOptional  "arch"
[ -n "$execAfter" ] && info "executing after command: $execAfter" && eval "$execAfter"

#git reset --hard

popd > /dev/null || fatal "Unable to return to starting directory"
