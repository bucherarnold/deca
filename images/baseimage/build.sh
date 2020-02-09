#!/bin/bash -a

DOCKER_HUB_REGISTRY="docker.io/deca"
CONTAINER_FULLNAME="baseimage"
VERSION="v01"

TAGGED_PATH="${DOCKER_HUB_REGISTRY}/${CONTAINER_FULLNAME}:${VERSION}"
LATEST_PATH="${DOCKER_HUB_REGISTRY}/${CONTAINER_FULLNAME}:latest"

docker image build -t "${LATEST_PATH}" .
#docker push "${LATEST_PATH}"

#docker tag "${CONTAINER_FULLNAME}" "${TAGGED_PATH}"
#docker push "${TAGGED_PATH}"