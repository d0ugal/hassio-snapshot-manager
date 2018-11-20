#!/bin/bash

set -evx
set -x

repo=$1;

docker run -it --rm --privileged --name "snapshot-manager" \
    -v ~/.docker:/root/.docker \
    -v "${repo}":/docker \
    hassioaddons/build-env:latest \
    --image "d0ugal/hassio-snapshot-manager-{arch}" \
    --target "snapshot-manager" \
    --git \
    --${ARCH:-all} \
    --push
