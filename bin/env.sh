#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x

source .env
pwd
ls
source .env | eval "echo \"$(cat digital-form-builder/designer/Dockefile)\""
exit 1
