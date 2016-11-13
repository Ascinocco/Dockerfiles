#!/usr/bin/env bash

#*******************************#
# -----------run.sh------------ #
# ---Author: Anthony Scinocco-- #
# ----Runs the app container--- #
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

# stops and removes all containers to avoid port conflicts
function stopAndRemoveContainers {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

function runMongo {
  source "/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern/mongo/scripts/run.sh"
}

function runNode {
  source "/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern/node/scripts/run.sh" $APP_PATH
}

# runs the script
function run {
  getAppPath "$1"
  stopAndRemoveContainers
  runMongo
  runNode
}

# entry point
run "$APP_PATH"
