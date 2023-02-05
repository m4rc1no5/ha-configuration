#!/bin/bash
yum update -y
yum upgrade -y
yum autoremove -y

cd /opt/
docker-compose pull
docker-compose up -d
docker image prune -af
docker volume prune -f