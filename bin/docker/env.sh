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

. "/scripts/build_env_checks.sh"
. "/scripts/bashcolors.sh"

export JDK_VERSION="JDK $(javac -version 2>&1 | cut -d' ' -f2)"

fgrep "Ubuntu 22.04" /etc/os-release > /dev/null 2>&1
if [ $? -eq 0 ];
then
  echo -e "${IBlue}${On_Black}Use (for example)   SwitchJDK 11   to select the desired JDK to build with.${Color_Off}"

  function SwitchJDK {
      local JDK=$1
      update-java-alternatives -l | fgrep "${JDK}" > /dev/null
      if [ $? -ne 0 ];
      then
        fail "JDK ${JDK} is not available"
        info "Available are:"
        update-java-alternatives -l
      else
        echo -e "${IRed}${On_Black}Setting JDK to version ${JDK}${Color_Off}"
        sudo update-java-alternatives --set $(update-java-alternatives -l | fgrep "${JDK}" | sed 's@ \+@ @g' | cut -d' ' -f1);
        export JAVA_HOME=$(update-java-alternatives -l | fgrep "${JDK}" | sed 's@ \+@ @g' | cut -d' ' -f3);
        export JDK_VERSION="JDK $(javac -version 2>&1 | cut -d' ' -f2)"
      fi
  }

  # The non-ubuntu images do not include git
  . "/usr/lib/git-core/git-sh-prompt"
fi

export PS1='\['${IBlue}${On_Black}'\] \u@\['${IWhite}${On_Red}'\][Reproducible Builder \['${BWhite}${On_Blue}'\]<'\${JDK_VERSION}'>\['${IWhite}${On_Red}'\]]\['${IBlue}${On_Black}'\]:\['${Cyan}${On_Black}'\]\w$(declare -F __git_ps1 &>/dev/null && __git_ps1 " \['${BIPurple}'\]{\['${BIGreen}'\]%s\['${BIPurple}'\]}")\['${BIBlue}'\] ]\['${Color_Off}'\]\n$ '
