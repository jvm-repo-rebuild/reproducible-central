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

export LC_ALL=C
[ -d tmp ] || mkdir tmp

unexpectedDiffoscope="tmp/unexpected-diffoscope.txt"
stats="tmp/stats.txt"

tac="tac"
numfmt="numfmt"
if [ "$(uname -s)" ==  "Darwin" ]
then
  tac="tail -r"
  numfmt="gnumfmt"
fi

# use content of "ignore" file to skip some versions
function keepVersion() {
  local dir=$1
  local version=$2
  if [ -f $dir/ignore ]
  then
    while IFS= read -r line
    do
      if [ "$line" == "$version" ]
      then
        return 1
      fi
    done < $dir/ignore
  fi
  return 0
}
