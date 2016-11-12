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


APP_PATH="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"
DOCKER_DIR="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"
DEV_ARGS='--build-arg NODE_ENV_VAR="development"'
PROD_ARGS='--build-arg NODE_ENV_VAR="production"'


function stopAndRemoveContainers {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

function attachLogging {
  docker logs -f $(docker ps -a -q)
}

function run {
  docker run -d -v "$(echo $APP_PATH)":/usr/src \
          -p 80:8000 anthonyscinocco/mern:latest
}

function build {
  docker build $(echo $DEV_ARGS) -t anthonyscinocco/mern:latest "$DOCKER_DIR"
}
