#!/bin/bash
set -e

echo "Stopping current application..."
cd /opt/ci-pipeline-demo/current 2>/dev/null || true
sudo docker compose down || true

echo "Cleaning up latest-release if exists..."
rm -rf /opt/ci-pipeline-demo/releases/latest-release