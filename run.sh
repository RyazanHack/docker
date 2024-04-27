#!/bin/bash

source .env

FILES="-f docker-compose.base.yml \
       -f ./backend/docker-compose.yml  \
       -f ./frontend/docker-compose.yml \
       -f ./s3-worker/docker-compose.yml \
       -f docker-compose.yml"

docker compose $FILES --env-file .env up --build 
