#!/bin/bash

export TZ="America/New_York"
export PUID=1000
export PGID=1000
export DOCKER__CONFIG="$(pwd)/config"

docker-compose up -d
