#!/usr/bin/env bash

#*******************************#
# -----------run.sh------------ #
# ---Author: Anthony Scinocco-- #
# --Runs the docker container-- #
# ------November 11, 2016------ #
#*******************************#

# # stops and removes all containers to avoid port conflicts
# function stopAndRemoveContainers {
#   docker stop $(docker ps -a -q)
#   docker rm $(docker ps -a -q)
# }

# runs the containers
function runContainer {
  docker run -d -p 27017:27017 anthonyscinocco/mern-mongo:latest
}

# runs the script
function run {
  # stopAndRemoveContainers
  runContainer
}

# entry point
run
