#!/usr/bin/env bash

#*******************************#
# ----------build.sh----------- #
# ---Author: Anthony Scinocco-- #
# ---Builds the docker image--- #
# ------November 11, 2016------ #
#*******************************#

DOCKER_DIR="$(pwd)"
DEV_ARGS='--build-arg NODE_ENV_VAR="development"'

function stopAndRemoveContainers {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

function build {
  docker build $(echo $DEV_ARGS) \
          -t anthonyscinocco/node:latest "$DOCKER_DIR"
}

function run {
  stopAndRemoveContainers
  build
}

run
