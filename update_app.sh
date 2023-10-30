#!/bin/bash

set -x

export APPS_JSON_BASE64=$(base64 -w 0 ./apps.json)

sudo docker build \
  --build-arg=FRAPPE_PATH=https://github.com/frappe/frappe \
  --build-arg=FRAPPE_BRANCH=version-14 \
  --build-arg=PYTHON_VERSION=3.10.12 \
  --build-arg=NODE_VERSION=16.20.1 \
  --build-arg=APPS_JSON_BASE64=$APPS_JSON_BASE64 \
  --tag=ialtayeb/icenna_app:latest \
  --file=images/custom/Containerfile .

sudo docker push {docker_private repo}:latest