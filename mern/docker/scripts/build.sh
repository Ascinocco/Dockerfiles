#!/usr/bin/env bash

#*******************************#
# ----------build.sh----------- #
# ---Author: Anthony Scinocco-- #
# ---Builds the docker image--- #
# ------November 11, 2016------ #
#*******************************#
# Script Parameters: --------------------------------------------------------- #
# Parameters: ---------------------------------------------------------------- #
# <new> <prod>: will build the image from scratch with production settings --- #
# <new> <local>: will build the image from scratch with local settings ------- #
# <   > <     >: will build the image for local settings --------------------- #
# ---------------------------------------------------------------------------- #
APP_PATH="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"
DOCKER_DIR="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"
ARGS_FILE_PATH="./docker/args.dev.list"
# docker stop $(docker ps -a -q)
# docker rm $(docker ps -a -q)
DEV_ARGS='--build-arg NODE_ENV_VAR="development"'
# docker build --build-arg NODE_ENV_VAR=ENV_VAL --build-arg CODE_DIR=$CODE_DIR -t anthonyscinocco/mern:dev "$DOCKER_DIR"

docker build $(echo $DEV_ARGS) -t anthonyscinocco/mern:dev "$DOCKER_DIR"
docker run -d -v "$(echo $APP_PATH)":/usr/src/app \
        -i -t anthonyscinocco/mern:dev /bin/bash



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
# buildProduction () ------------- #
# builds the container for the --- #
# prod environment --------------- #
# Paramter: $new (boolean) ------- #
# -------------------------------- #
# function buildProduction {
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
