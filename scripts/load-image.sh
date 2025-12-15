#!/bin/bash
set -e

cd /home/ubuntu/app

sudo docker load -i ci-pipeline-demo.tar
