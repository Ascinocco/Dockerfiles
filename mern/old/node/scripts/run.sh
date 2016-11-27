#!/usr/bin/env bash

#*******************************#
# -----------run.sh------------ #
# ---Author: Anthony Scinocco-- #
# --Runs the docker container-- #
# ------November 11, 2016------ #
#*******************************#

# path to app
APP_PATH="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"

function getAppPath {
  if [ -z "$1" ]; then
    echo "Missing the path to app. Pass in the app path"
    exit 1
  fi
}

# stops and removes all containers to avoid port conflicts
function stopAndRemoveContainers {
  docker stop mern-node
  docker rm -f mern-node
}

# runs the containers
function runContainer {
  docker run \
          --name mern-node \
          --link mern-mongo \
          -v "$(echo $APP_PATH)":/usr/src \
          -p 80:8000 \
          anthonyscinocco/mern-node:latest
}

# # attaches logging
# function attachLogging {
#   docker logs -f mern-node
# }

# runs the script
function run {
  getAppPath "$1"
  stopAndRemoveContainers
  runContainer
  # attachLogging
}

# entry point
run "$APP_PATH"
