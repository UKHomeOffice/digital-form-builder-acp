#!/usr/bin/env-runner sh
[[ -z "${DEBUG}" ]] || set -x
source .env
export BASE_IMAGE_TAG="$XGOV_TAG"
echo "$BASE_IMAGE_TAG"
eval "echo \"$(cat runner/Dockerfile)\"" > runner/Dockerfile.out
