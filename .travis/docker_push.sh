#!/bin/bash
echo "$TRAVIS_TAG"
python setup.py sdist
echo "$DOCKERHUB_MAINTAINER_PASS" | docker login -u "$DOCKERHUB_MAINTAINER_NAME" --password-stdin
docker build -t disktnk/travis-deploy:"$TRAVIS_TAG" -f docker/dockerhub/Dockerfile --build-arg TRAVIS_DEPLOY_VERSION="${TRAVIS_TAG:1}" .
docker push disktnk/travis-deploy:"$TRAVIS_TAG"
