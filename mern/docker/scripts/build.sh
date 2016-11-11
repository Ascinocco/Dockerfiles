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
CODE_DIR="./code"
DOCKER_DIR="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"
ENV_VAL="development" # static for the time being
ARGS_FILE_PATH="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern/docker/args.list"
docker stop $(docker ps -a -q)
# docker rm $(docker ps -a -q)

# docker build --build-arg NODE_ENV_VAR=ENV_VAL --build-arg CODE_DIR=$CODE_DIR -t anthonyscinocco/mern:dev "$DOCKER_DIR"

docker build $(cat ../arg.dev.list) -t anthonyscinocco/mern:dev "$DOCKER_DIR"


# -------------------------------- #
# buildLocal () ------------------ #
# builds the container for the --- #
# local environment -------------- #
# Paramter: $new (boolean) ------- #
# -------------------------------- #
# function buildLocal {
#   #statements
# }

# function buildProduction {
#   #statements
# }
