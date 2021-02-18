#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x

source .env
source .env | eval "echo \"$(cat designer/Dockefile)\""
exit 1
