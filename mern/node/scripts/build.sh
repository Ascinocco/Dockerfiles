#!/usr/bin/env bash

#*******************************#
# ----------build.sh----------- #
# ---Author: Anthony Scinocco-- #
# ---Builds the docker image--- #
# ------November 11, 2016------ #
#*******************************#

DOCKER_DIR="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern/node"
DEV_ARGS='--build-arg NODE_ENV_VAR="development"'

function stopAndRemoveContainers {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

function build {
  docker build $(echo $DEV_ARGS) \
          -t anthonyscinocco/mern-node:latest "$DOCKER_DIR"
}

function run {
  stopAndRemoveContainers
  build
}

run
