#!/usr/bin/env bash

# runs container
APP_PATH="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"

docker run -d -v "$(echo $APP_PATH)":/usr/src \
        -p 8000:8000 anthonyscinocco/mern:latest
