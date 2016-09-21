FROM ubuntu:14.04.4
MAINTAINER Daniel R. Kerr <daniel.r.kerr@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y \
 && apt-get install -qq -y apt-offline \
 && apt-get install -qq -y python python-dev python-pip \
 && apt-get install -qq -y python-apt \
 && apt-get install -qq -y python3 python3-dev python3-pip \
 && apt-get install -qq -y python3-apt \
 && apt-get clean \
 && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
