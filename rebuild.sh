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
echo "| 4. how?"
displayMandatory "command"
echo "| 5. expected results?"
displayMandatory "buildinfo"
displayOptional  "diffoscope"
displayOptional  "issue"

if [ -z "${timezone}" ]
then
  timezone=$DEFAULT_timezone;
fi
if [ -z "${locale}" ]
then
  locale=$DEFAULT_locale;
fi
if [ -z "${umask}" ]
then
  umask=$DEFAULT_umask;
fi

base="$SCRIPTDIR"

pushd "$(dirname ${buildspec})" >/dev/null || fatal "Could not move into ${buildspec}"

echo
# set umask for the script execution itself because Git updates are better with target umask
umask $umask
export MVN_UMASK=${umask}
fetchSource

DEFAULT_engine="docker"
DEFAULT_engine_buildopts_docker=""
DEFAULT_engine_buildopts_podman="--format docker"
DEFAULT_engine_buildopts="$([[ 'docker' == ${RB_OCI_ENGINE:-$DEFAULT_engine} ]] && echo $DEFAULT_engine_buildopts_docker || echo $DEFAULT_engine_buildopts_podman)"
DEFAULT_engine_runopts_docker=""
DEFAULT_engine_runopts_podman="--userns=keep-id"
DEFAULT_engine_runopts="$([[ 'docker' == ${RB_OCI_ENGINE:-$DEFAULT_engine} ]] && echo $DEFAULT_engine_runopts_docker || echo $DEFAULT_engine_runopts_podman)"
DEFAULT_volumeflags=""

if [ -z "${RB_OCI_ENGINE}" ]
then
  export RB_OCI_ENGINE=$DEFAULT_engine
fi
if [ -z "${RB_OCI_ENGINE_BUILD_OPTS}" ]
then
  export RB_OCI_ENGINE_BUILD_OPTS=$DEFAULT_engine_buildopts
fi
if [ -z "${RB_OCI_ENGINE_RUN_OPTS}" ]
then
  export RB_OCI_ENGINE_RUN_OPTS=$DEFAULT_engine_runopts
fi
if [ -z "${RB_OCI_VOLUME_FLAGS}" ]
then
  export RB_OCI_VOLUME_FLAGS=$DEFAULT_volumeflags;
fi

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
displayResult

#git reset --hard

popd > /dev/null || fatal "Unable to return to starting directory"
