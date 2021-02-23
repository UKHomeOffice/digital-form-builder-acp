#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x
source .env
source bin/util.sh
export BASE_IMAGE_TAG="$XGOV_TAG"
echo "$BASE_IMAGE_TAG"
sed 's/$BASE_IMAGE_TAG/'"$XGOV_TAG"'/' runner/Dockerfile > runner/Dockerfile.out
echo -n "$XGOV_TAG,latest,$DRONE_COMMIT_SHA" > .tags
echo "RUNNER_TAG=$XGOV_TAG" > .runner
cat .tags
cat runner/Dockerfile.out
info "Docker file processed"
