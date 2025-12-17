#!/bin/bash
set -e

RELEASE_DIR="/opt/ci-pipeline-demo/releases/release-${DEPLOYMENT_ID}"

echo "Renaming latest-release to release-${DEPLOYMENT_ID}"

# Move (rename) instead of copy - much faster and no duplicate storage
mv /opt/ci-pipeline-demo/releases/latest-release "${RELEASE_DIR}"

# # Make scripts executable
# chmod +x "${RELEASE_DIR}/scripts/"*.sh

echo "Release ${DEPLOYMENT_ID} prepared successfully"