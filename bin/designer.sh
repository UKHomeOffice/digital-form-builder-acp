#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x
source .env
source bin/util.sh
sed 's/$BASE_IMAGE_TAG/'"$XGOV_TAG"'/' designer/Dockerfile > designer/Dockerfile.out
echo -n "$DRONE_TAG,latest,$DRONE_COMMIT_SHA" > .tags
echo "DESIGNER_TAG=$DRONE_TAG" > .designer
echo
cat .designer
pwd
echo "Reading tags"
cat .tags
echo
echo "Reading docker file for designer"
cat designer/Dockerfile.out
info "Docker file processed for designer"
