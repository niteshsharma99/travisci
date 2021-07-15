#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push  nitesh99sharma/python-travis:$TRAVIS_TAG