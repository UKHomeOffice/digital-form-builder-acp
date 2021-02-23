#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x
source .env
source bin/util.sh
export BASE_IMAGE_TAG="$XGOV_TAG"
echo "$BASE_IMAGE_TAG"
sed 's/$BASE_IMAGE_TAG/'"$XGOV_TAG"'/' designer/Dockerfile > designer/Dockerfile.out
echo -n "$XGOV_TAG,latest,$DRONE_COMMIT_SHA" > .tags
echo "DESIGNER_TAG=$XGOV_TAG" > .designer
cat .tags
cat designer/Dockerfile.out
info "Docker file processed"


