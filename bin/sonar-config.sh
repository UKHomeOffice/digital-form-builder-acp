#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x
source bin/util.sh
if [[ -z "${SONAR_TOKEN}" ]]; then
  error "Missing Sonar Token"
  exit 1
else
  info "Found sonar token"
fi
sed 's/$USER/'"${SONAR_TOKEN}"'/' digital-form-builder/sonar-project.properties > digital-form-builder/sonar-project.properties
info "Token configured OK"