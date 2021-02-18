#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x

source .env
pwd
source .env | eval "echo \"$(cat designer/Dockefile)\""
exit 1
