#!/bin/bash
cd /opt/ci-pipeline-demo/current
chmod +x scripts/*.sh
sudo docker compose down || true
