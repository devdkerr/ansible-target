FROM ubuntu:14.04.4
MAINTAINER Daniel R. Kerr <daniel.r.kerr@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y \
 && apt-get install -qq -y apt-offline \
 && apt-get install -qq -y python python-dev \
 && apt-get install -qq -y python-apt python-pip \
 && apt-get clean \
 && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
