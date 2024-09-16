#!/bin/bash -x
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Where is Java
JAVA_APP=$(which java)
JAVA_HOME_BIN=$( echo $JAVA_APP | sed 's@/java$@@' )
JAVA_HOME=$( echo $JAVA_APP | sed 's@/bin/java$@@' )
JAVA_MAJOR_VERSION=$( "${JAVA_APP}" --version | head -1 | cut -d' ' -f2 | cut -d'.' -f1)

MACHINE_TYPE=$(uname -m)

case "$MACHINE_TYPE" in
  x86_64)
    MACHINE_TYPE=amd64
    ;;
esac

JAVA_NAME=java-${JAVA_MAJOR_VERSION}-openjdk-${MACHINE_TYPE}
JAVA_ALIAS=java-1.${JAVA_MAJOR_VERSION}.0-openjdk-${MACHINE_TYPE}
JAVA_PRIO=${JAVA_MAJOR_VERSION}00
[ -d /usr/lib/jvm/ ] || mkdir -p /usr/lib/jvm/
cd /usr/lib/jvm/ || exit 1
ln -s "${JAVA_HOME}" "${JAVA_NAME}"
ln -s "${JAVA_NAME}" "${JAVA_ALIAS}"

JINFO_FILE="/usr/lib/jvm/.${JAVA_ALIAS}.jinfo"

(
echo "name=${JAVA_NAME}"
echo "alias=${JAVA_ALIAS}"
echo "priority=${JAVA_PRIO}"
echo "section=main"
echo ""
) > "${JINFO_FILE}"

TOOL_BIN_DIR="/usr/lib/jvm/${JAVA_ALIAS}/bin/"

for tool in "hl java" \
            "hl jpackage" \
            "hl keytool" \
            "hl rmiregistry" \
            "hl jexec" \
            "jdkhl jar" \
            "jdkhl jarsigner" \
            "jdkhl javac" \
            "jdkhl javadoc" \
            "jdkhl javap" \
            "jdkhl jcmd" \
            "jdkhl jdb" \
            "jdkhl jdeprscan" \
            "jdkhl jdeps" \
            "jdkhl jfr" \
            "jdkhl jimage" \
            "jdkhl jinfo" \
            "jdkhl jlink" \
            "jdkhl jmap" \
            "jdkhl jmod" \
            "jdkhl jps" \
            "jdkhl jrunscript" \
            "jdkhl jshell" \
            "jdkhl jstack" \
            "jdkhl jstat" \
            "jdkhl jstatd" \
            "jdkhl jwebserver" \
            "jdkhl serialver" \
            "jdkhl jhsdb" \
            "jdk jconsole"
do
  tool_array=( $tool )
  TOOL_TYPE="${tool_array[0]}"
  TOOL_NAME="${tool_array[1]}"

  if [ -f "${TOOL_BIN_DIR}/${TOOL_NAME}" ];
  then
    echo "${TOOL_TYPE} ${TOOL_NAME} ${TOOL_BIN_DIR}${TOOL_NAME}" >> "${JINFO_FILE}"
    update-alternatives --install /usr/bin/${TOOL_NAME} ${TOOL_NAME} ${TOOL_BIN_DIR}${TOOL_NAME} ${JAVA_PRIO}
  fi
done

