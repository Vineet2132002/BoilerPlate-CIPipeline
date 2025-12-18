#!/bin/bash
set -e

echo "Stopping current application..."

# Docker Compose + Symlinks Warning:
# Docker Compose uses the directory name as the project name. Running commands from a 
# symlink (e.g., /current -> /release-xyz/) creates project name mismatches, causing 
# `docker compose down` to not find containers.
# Fix: Always cd to the real directory first:
#   cd $(readlink -f /path/to/symlink)
#   docker compose down
# Or set explicit project name:
#   echo "COMPOSE_PROJECT_NAME=my-app" > .env

# cd /opt/ci-pipeline-demo/current 2>/dev/null || true
cd $(readlink -f /opt/ci-pipeline-demo/current) 2>/dev/null || true
docker compose down || true

echo "Cleaning up latest-release if exists..."
rm -rf /opt/ci-pipeline-demo/releases/latest-release