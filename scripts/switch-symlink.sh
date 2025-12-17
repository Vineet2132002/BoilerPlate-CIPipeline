#!/bin/bash

# set -e: exit immediately if any command fails, ensures deployment stops on errors
set -e

RELEASE_DIR="/opt/ci-pipeline-demo/releases/release-${DEPLOYMENT_ID}"
CURRENT_LINK="/opt/ci-pipeline-demo/current"

echo "Switching symlink to new release directory: $RELEASE_DIR"

# ln -> link command
# -s -> create a symbolic link
# -f -> forcefully remove existing destination files
# -n -> treat destination that is a symlink to a directory as a normal file, preventing recursive linking
ln -sfn "$RELEASE_DIR" "$CURRENT_LINK"