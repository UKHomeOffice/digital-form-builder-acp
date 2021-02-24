#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x
source .env
source bin/util.sh
export BASE_IMAGE_TAG="$XGOV_TAG"
echo "$BASE_IMAGE_TAG"
sed 's/$BASE_IMAGE_TAG/'"$XGOV_TAG"'/' runner/Dockerfile > runner/Dockerfile.out
echo -n "$XGOV_TAG,latest,$DRONE_COMMIT_SHA" > .tags
echo "RUNNER_TAG=$XGOV_TAG" > .runner
echo
cat .runner
pwd
echo "Reading tags"
cat .tags
echo
echo "Reading docker file for runner"
cat designer/Dockerfile.out
info "Docker file processed for runner"

