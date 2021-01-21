#!/usr/bin/env bash
[[ -z "${DEBUG}" ]] || set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${DIR}/util.sh || exit 1

export KUBE_CERTIFICATE_AUTHORITY=https://raw.githubusercontent.com/UKHomeOffice/acp-ca/master/${DRONE_DEPLOY_TO=notset}.crt
export ACP_IMAGE_VERSION=${ACP_IMAGE_VERSION:-"latest"}

export BASE_IMAGE_VERSION=${BASE_IMAGE_VERSION:-"latest"}
info "---"
info "ACP_IMAGE_VERSION: ${ACP_IMAGE_VERSION}"
info "---"