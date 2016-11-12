#!/usr/bin/env bash

#*******************************#
# ----------build.sh----------- #
# ---Author: Anthony Scinocco-- #
# ---Builds the docker image--- #
# ------November 11, 2016------ #
#*******************************#

# Set variables
APP_PATH="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"
DOCKER_DIR="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"
DEV_ARGS='--build-arg NODE_ENV_VAR="development"'
PROD_ARGS='--build-arg NODE_ENV_VAR="production"'

# stops and removes all containers to avoid port conflicts
function stopAndRemoveContainers {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

# builds container
function build {
  docker build $(echo $DEV_ARGS) -t anthonyscinocco/mern:latest "$DOCKER_DIR"
}

# runs the containers
function runContainer {
  docker run -d -v "$(echo $APP_PATH)":/usr/src \
          -p 80:80 -p 27017:27017 anthonyscinocco/mern:latest
}

# attaches logging
function attachLogging {
  docker logs -f $(docker ps -a -q)
}

# runs the script
function run {
  stopAndRemoveContainers
  build
  runContainer
  attachLogging
}

# entry point
run
