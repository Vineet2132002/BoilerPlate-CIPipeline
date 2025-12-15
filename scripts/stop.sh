#!/bin/bash
cd /home/ubuntu/app
chmod +x scripts/*.sh
sudo docker compose down || true
