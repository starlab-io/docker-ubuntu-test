FROM starlabio/ubuntu-base:1.7
MAINTAINER Farhan Patwa <farhan.patwa@starlab.io>

ENV DEBIAN_FRONTEND=noninteractive
ENV USER root

# build depends
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        make \
        openssh-client \
        r-base-core && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
