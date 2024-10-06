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
FROM docker.io/library/ubuntu:22.04

ENV INSIDE_DOCKER=Yes

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /root

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

#####
# Disable suggests/recommends
#####
RUN echo APT::Install-Recommends "0"\; > /etc/apt/apt.conf.d/10disableextras
RUN echo APT::Install-Suggests "0"\; >>  /etc/apt/apt.conf.d/10disableextras

ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_TERSE=true

###
# Because of repeated 404 errors on that site during `apt-get install`
# --
# Err:20 http://security.ubuntu.com/ubuntu jammy-updates/main amd64 libtiff5 amd64 4.3.0-6ubuntu0.3
#    404  Not Found [IP: 185.125.190.36 80]
###
RUN sed -i 's@^\(deb http://security.ubuntu.com\)@# -------- Disabled because of 404 problems #\1@' /etc/apt/sources.list

###
# Update and install common packages
###
RUN apt clean cache \
   && apt-get -q update \
   && apt-get install -y software-properties-common apt-utils apt-transport-https ca-certificates \
   && apt-get -q install -y --no-install-recommends \
    bash-completion \
    build-essential \
    bzip2 \
    wget \
    curl \
    docker.io \
    git \
    gnupg-agent \
    rsync \
    sudo \
    vim \
    locales \
    wget \
    time \
    ruby \
    tzdata \
    diffoscope \
    procyon-decompiler \
    python3-tlsh \
    tlsh-tools \
    unzip \
    less \
    graphviz
