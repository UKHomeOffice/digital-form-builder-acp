#!/usr/bin/env-designer.sh
[[ -z "${DEBUG}" ]] || set -x
source .env
export BASE_IMAGE_TAG="$XGOV_TAG"
echo "$BASE_IMAGE_TAG"
eval "echo \"$(cat designer/Dockerfile)\"" > designer/Dockerfile.out


