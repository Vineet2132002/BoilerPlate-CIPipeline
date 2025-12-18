#!/bin/bash
RELEASE=$1
cd $(readlink -f /opt/ci-pipeline-demo/current)
docker compose down
ln -sfn /opt/ci-pipeline-demo/releases/$RELEASE /opt/ci-pipeline-demo/current
cd $(readlink -f /opt/ci-pipeline-demo/current)
sudo docker compose up -d
