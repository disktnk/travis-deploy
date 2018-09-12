FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip \
    python3-wheel \
    python3-setuptools && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

ARG TRAVIS_DEPLOY_VERSION
COPY dist/travis-deploy-${TRAVIS_DEPLOY_VERSION}.tar.gz .
RUN pip3 install travis-deploy-${TRAVIS_DEPLOY_VERSION}.tar.gz && \
    rm travis-deploy-${TRAVIS_DEPLOY_VERSION}.tar.gz
RUN python3 -c "import tools.msg as m; m.msg()"
