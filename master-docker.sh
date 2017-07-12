#!/bin/bash

set -x

for image in xenial-common edxapp; do
    docker build -f docker/build/$image/Dockerfile . -t edxops/$image:latest
done
