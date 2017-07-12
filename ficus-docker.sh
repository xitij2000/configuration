#!/bin/bash

set -x

RELEASE_LINE=ficus
BUILD_ARGS="--build-arg OPENEDX_RELEASE=open-release/$RELEASE_LINE.master --build-arg IMAGE_PREFIX=$RELEASE_LINE/"

for image in xenial-common edxapp; do
    docker build ${BUILD_ARGS} -f docker/build/$image/Dockerfile . -t edxops/$RELEASE_LINE/$image:latest
done
