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
DOCKER_DIR="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"
ARGS_FILE_PATH="../args.dev.list"
docker stop $(docker ps -a -q)
# docker rm $(docker ps -a -q)

# docker build --build-arg NODE_ENV_VAR=ENV_VAL --build-arg CODE_DIR=$CODE_DIR -t anthonyscinocco/mern:dev "$DOCKER_DIR"

docker build --build-arg NODE_ENV_VAR=development --build-arg CODE_DIR="./code" -t anthonyscinocco/mern:dev "$DOCKER_DIR"


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
