#!/usr/bin/env bash

#*******************************#
# -----------run.sh------------ #
# ---Author: Anthony Scinocco-- #
# --Runs the docker container-- #
# ------November 11, 2016------ #
#*******************************#

# path to app
APP_PATH="/Users/anthony/Documents/Personal/Projects/2017/docker/docker/mern"

# stops and removes all containers to avoid port conflicts
function stopAndRemoveContainers {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

# runs the containers
function runContainer {
  docker run -d -v "$(echo $APP_PATH)":/usr/src \
          -p 80:8000 -p 27017:27017 anthonyscinocco/mern:latest
}

# attaches logging
function attachLogging {
  docker logs -f $(docker ps -a -q)
}

# runs the script
function run {
  stopAndRemoveContainers
  runContainer
  attachLogging
}

# entry point
run
