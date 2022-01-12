FROM starlabio/ubuntu-base:1.7
MAINTAINER Farhan Patwa <farhan.patwa@starlab.io>

ENV DEBIAN_FRONTEND=noninteractive
ENV USER root

# build depends
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        apt-transport-https \
        ca-certificates \
        make \
        openssh-client \
        rsync \
        r-base-core && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN update-ca-certificates && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    python3 -m pip install --upgrade setuptools wheel
