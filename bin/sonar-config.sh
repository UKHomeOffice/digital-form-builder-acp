#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x
echo ${drone-ci-token}

if [[ -z "${drone-ci-token}" ]]; then
  echo "Missing Sonar Token"
  exit 1
fi
sed 's/$USER/'"${drone-ci-token}"'/' digital-form-builder/sonar-project.properties > digital-form-builder/sonar-project.properties