#!/bin/sh
#
# build all images
set -e

cd $(dirname $0)

cd ../

echo "build base"

docker build -t leeln/base:alpine base/alpine

echo "build docker dind"

docker build -t docker.repo.waimai.sankuai.info/mico/docker:1.11.2-dind docker/1.11.2-dind
