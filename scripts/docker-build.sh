#!/bin/bash

set -evx
set -x

repo=$1;

docker run \
  --privileged \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$repo":/docker \
  hassioaddons/build-env:latest \
  --image "d0ugal/hassio-snapshot-manager-{arch}" \
  --git \
  --target snapshot-manager \
  --${ARCH:-all}
