#!/bin/bash

docker volume create portainer_data

docker run -d \
    --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    -p 8000:8000 \
    -p 9443:9443 \
    portainer/portainer-ce:latest
