#!/usr/bin/env bash

#*******************************#
# ----------build.sh----------- #
# ---Author: Anthony Scinocco-- #
# ---Builds the docker image--- #
# ------November 11, 2016------ #
#*******************************#

DOCKER_DIR="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern/mongo"

function stopAndRemoveContainers {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

function build {
  docker build -t anthonyscinocco/mern-mongo:latest "$DOCKER_DIR"
}

function run {
  stopAndRemoveContainers
  build
}

run
