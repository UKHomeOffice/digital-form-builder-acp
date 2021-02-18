#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x
source .env | export BASE_IMAGE_TAG=$XGOV_TAG | eval "echo \"$(cat designer/Dockerfile)\"" > designer/Dockerfile.out
cat designer/Dockerfile.out

