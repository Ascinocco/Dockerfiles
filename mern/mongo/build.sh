#!/usr/bin/env bash

#*******************************#
# ----------build.sh----------- #
# ---Author: Anthony Scinocco-- #
# ---Builds the docker image--- #
# ------November 11, 2016------ #
#*******************************#

DOCKER_DIR="$(pwd)"

function stopAndRemoveContainers {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

function build {
  docker build -t anthonyscinocco/mongo:latest "$DOCKER_DIR"
}

function run {
  stopAndRemoveContainers
  build
}

run
