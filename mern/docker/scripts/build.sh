#!/usr/bin/env bash

#*******************************#
# ----------build.sh----------- #
# ---Author: Anthony Scinocco-- #
# ---Builds the docker image--- #
# ------November 11, 2016------ #
#*******************************#
# ---------------------------------------------------------------------------- #
# Script Parameters: --------------------------------------------------------- #
# Parameters: $new ----------------------------------------------------------- #
# ---------------------------------------------------------------------------- #

# docker stop $(docker ps -a -q)
# docker rm $(docker ps -a -q)
APP_PATH="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"
DOCKER_DIR="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"
ARGS_FILE_PATH="./docker/args.dev.list"
DEV_ARGS='--build-arg NODE_ENV_VAR="development"'
PROD_ARGS='--build-arg NODE_ENV_VAR="production"'

docker build $(echo $DEV_ARGS) -t anthonyscinocco/mern:latest "$DOCKER_DIR"
docker run -d -v "$(echo $APP_PATH)":/usr/src \
        -p 8000:8000 anthonyscinocco/mern:latest

# -------------------------------- #
# buildLocal () ------------------ #
# builds the container for the --- #
# local environment -------------- #
# Paramter: $new (boolean) ------- #
# -------------------------------- #
# function buildLocal {
#   #statements
# }

# -------------------------------- #
# run () ------------------------- #
# handles control flow ----------- #
# Paramter: $new (boolean) ------- #
# --------- $env ----------------- #
# -------------------------------- #
# function run {
#   #statements
# }
