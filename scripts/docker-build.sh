#!/bin/bash

set -evx
set -x


docker run \
    -v $(pwd)/snapshot-manager:/data \
    --privileged \
    -v ~/.docker:/root/.docker \
    homeassistant/amd64-builder \
    --all  \
    --docker-hub d0ugal \
    --image "hassio-snapshot-manager-{arch}" \
    --target /data \
    --version dev;
