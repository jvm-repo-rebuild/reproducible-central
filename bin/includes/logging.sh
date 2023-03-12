#!/usr/bin/env bash
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

function info() {
  echo -e "${Color_Off}${IWhite}[${BIBlue}INFO${IWhite}] ${Color_Off}${1}"
}

function pass() {
  echo -e "${Color_Off}${IWhite}[${BIGreen}PASS${IWhite}] ${Color_Off}${1}"
}

function warn() {
  echo -e "${Color_Off}${IWhite}[${BIYellow}WARN${IWhite}] ${IYellow}${1}${Color_Off}"
}

function fail() {
  echo -e "${Color_Off}${IWhite}[${BIRed}FAIL${IWhite}] ${IRed}${1}${Color_Off}"
}

function fatal() {
  (
  echo -e "${Color_Off}"
  echo -e "${IWhite}[${BIRed}FAIL${IWhite}] ${IYellow}/========================================================================"
  echo -e "${IWhite}[${BIRed}FAIL${IWhite}] ${IYellow}| ${BIRed} $* ${IYellow}"
  echo -e "${IWhite}[${BIRed}FAIL${IWhite}] ${IYellow}\\========================================================================"
  echo -e "${IWhite}[${BIRed}FAIL${IWhite}] ${IYellow}${BIRed} ---------->>> PROCESS WAS ABORTED <<<---------- ${IYellow}"
  echo -e "${Color_Off}"
  ) 1>&2
  exit 1
}

runlog() {
  echo -e "${Color_Off}${IWhite}[${BIGreen}RUN ${IWhite}] ${Green}$* ${Color_Off}"
}

runcommand() {
  runlog "$*"
#  echo -e "\033[2m$*\033[0m"
  bash -c "$*"
}

function displayMandatory() {
  displayOptional "$1" "$2" '#@#'
}

function displayOptional() {
  local propName=$1
  local propDefault=$2
  local propValue=${!propName}
  if [ -z "$propValue" ];
  then
    declare DNAME=DEFAULT_${1}
    if [ ! -z "${!DNAME}" ];
    then
      warn "- $propName: Using default value: \"${propDefault}\""
    else
      if [ "${3}" == '#@#' ];
      then
        fatal "Setting \"${propName}\" is missing and mandatory"
#      else
#        warn "- $propName: Not specified (ignored)"
      fi
    fi
  else
    info "- $propName: \033[1m${propValue}\033[0m"
  fi
}
