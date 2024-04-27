#!/bin/bash

source .env

FILES="-f docker-compose.base.yml \
       -f ./backend/docker-compose.yml  \
       -f ./frontend/docker-compose.yml \
       -f docker-compose.yml"

docker compose $FILES --env-file .env up --build -d