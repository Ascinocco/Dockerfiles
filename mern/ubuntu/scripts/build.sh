#!/usr/bin/env bash

#************************************#
# ------------build.sh-------------- #
# -----Author: Anthony Scinocco----- #
# ---Builds defeault ubuntu image--- #
# --------November 11, 2016--------- #
#************************************#

DOCKER_DIR="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern/ubuntu"

function stopAndRemoveContainers {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

function build {
  docker build -t anthonyscinocco/ubuntu-custom:14.04 "$DOCKER_DIR"
}

function run {
  stopAndRemoveContainers
  build
}

run
