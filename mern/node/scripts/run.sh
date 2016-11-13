#!/usr/bin/env bash

#*******************************#
# -----------run.sh------------ #
# ---Author: Anthony Scinocco-- #
# --Runs the docker container-- #
# ------November 11, 2016------ #
#*******************************#

# path to app
APP_PATH="$1"

function getAppPath {
  if [ -z "$1" ]; then
    echo "Missing the path to app. Pass in the app path"
    exit 1
  fi
}

# # stops and removes all containers to avoid port conflicts
# function stopAndRemoveContainers {
#   docker stop $(docker ps -a -q)
#   docker rm $(docker ps -a -q)
# }

# runs the containers
function runContainer {
  docker run -d -v "$(echo $APP_PATH)":/usr/src \
          -p 80:8000 anthonyscinocco/mern-node:latest
}

# attaches logging
function attachLogging {
  docker logs -f $(docker ps -f "name=anthonyscinocco/mern-node:latest")
}

# runs the script
function run {
  getAppPath "$1"
  # stopAndRemoveContainers
  runContainer
  attachLogging
}

# entry point
run "$APP_PATH"
