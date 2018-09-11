#!/bin/bash
export TRAVIS_DEPLOY_LATEST_VER=`git describe --abbrev=0 --tags`
echo "$TRAVIS_DEPLOY_LATEST_VER"
echo "$DOCKERHUB_MAINTAINER_PASS" | docker login -u "$DOCKERHUB_MAINTAINER_NAME" --password-stdin
docker build -t disktnk/travis-deploy:"$TRAVIS_DEPLOY_LATEST_VER" -f docker/Dockerfile .
docker push disktnk/travis-deploy:"$TRAVIS_DEPLOY_LATEST_VER"
