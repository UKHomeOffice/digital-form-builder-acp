#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x

source .env
pwd
ls
source .env | eval "echo \"$(cat designer/Dockerfile)\""
exit 1
