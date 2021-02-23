#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x
source .env
source bin/util.sh
export BASE_IMAGE_TAG="$XGOV_TAG"
echo "$BASE_IMAGE_TAG"
eval "echo \"$(cat runner/Dockerfile)\"" > runner/Dockerfile.out
echo -n "$XGOV_TAG,latest,$DRONE_COMMIT_SHA" > .tags
echo "RUNNER_TAG=$XGOV_TAG" > /drone/src/.runner
pwd
ls -lah
info "Docker file processed"
