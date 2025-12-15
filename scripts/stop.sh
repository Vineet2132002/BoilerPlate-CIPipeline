#!/bin/bash
cd /home/ubuntu/app
chmod +x scripts/*.sh
docker compose down || true
