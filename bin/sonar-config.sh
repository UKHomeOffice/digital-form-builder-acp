#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x
echo ${drone-ci-token}

if [[ -z "${SONAR_TOKEN}" ]]; then
  echo "Missing Sonar Token"
  exit 1
fi
sed 's/$USER/'"${SONAR_TOKEN}"'/' digital-form-builder/sonar-project.properties > digital-form-builder/sonar-project.properties