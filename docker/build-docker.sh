#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-enig/enigd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/enigd docker/bin/
cp $BUILD_DIR/src/enig-cli docker/bin/
cp $BUILD_DIR/src/enig-tx docker/bin/
strip docker/bin/enigd
strip docker/bin/enig-cli
strip docker/bin/enig-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
