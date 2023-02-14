#!/bin/bash
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
# Native Linux (direct or via sudo)
USER_NAME=$1
USER_ID=$2
GROUP_ID=$3

if  fgrep "Ubuntu 22.04" /etc/os-release > /dev/null 2>&1 ;
then
  echo "Ubuntu 22.04 was found"

  groupadd --non-unique -g "${GROUP_ID}" "${USER_NAME}"
  useradd -g "${GROUP_ID}" -u "${USER_ID}" -k /root -m "${USER_NAME}" --home-dir "/var/maven"

  [ -d /etc/sudoers.d/ ] || mkdir -p /etc/sudoers.d/
  echo "${USER_NAME}    ALL=(ALL) NOPASSWD: ALL" >> "/etc/sudoers.d/${USER_NAME}"

else
  echo "Ubuntu 22.04 was NOT found, assuming busybox"

  # Commandline options vary across the different images.
  # So we go brutal here: Just do them all and afterwards only verify that one of them worked

  # One of these will fail ...
  addgroup --gid "${GROUP_ID}" "maven" > /dev/null 2>&1
  addgroup -g "${GROUP_ID}" "maven"    > /dev/null 2>&1

  # One of these will fail ...
  adduser --uid "${USER_ID}" --gid "${GROUP_ID}"  --shell "/bin/bash" --home "/var/maven" "${USER_NAME}"  > /dev/null 2>&1
  adduser -D -u "${USER_ID}" -G "maven"  --shell "/bin/bash" -h "/var/maven" "${USER_NAME}"               > /dev/null 2>&1

  grep -F "${USER_NAME}" /etc/passwd
  grep -F "maven" /etc/group
fi

chown "${USER_NAME}" "/var/maven"

{
echo "export HOME=/var/maven"
echo "export USER=${USER_NAME}"
echo '. /scripts/env.sh'
} >> "/var/maven/.bashrc"

VBOXSF_GROUP_LINE=$4
if [[ -n "${VBOXSF_GROUP_LINE}" ]];
then
    echo "${VBOXSF_GROUP_LINE}" >> /etc/group
    usermod -aG vboxsf "${USER_NAME}"
fi

