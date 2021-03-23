#!/usr/bin/env sh
[[ -z "${DEBUG}" ]] || set -x
if [[ -z "${SONAR_TOKEN}" ]]; then
  echo "Missing Sonar Token"
  exit 1
else
  "Found sonar token"
fi
sed 's/$USER/'"${SONAR_TOKEN}"'/' digital-form-builder/sonar-project.properties > digital-form-builder/sonar-project.properties
cat digital-form-builder/sonar-project.properties