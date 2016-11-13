#!/usr/bin/env bash

# ------------------------------------ #
# ------------start.sh---------------- #
# ---Runs the app required processes-- #
# -------Author: Anthony Scinocco----- #
# ----------November 12, 2016--------- #
# ------------------------------------ #

# --------------------------------------------------------- #
# -------------------------NOTE---------------------------- #
# All processes expect the app should run in the background #
# --------------------------------------------------------- #

# start mongo instance
function startMongo {
  mongod --dbpath /usr/data/db --fork --logpath /usr/mongo-logs/mongod.log
}

# install node modules
function installNodeModules {
  npm install
}

# start the MERN app
function startApp {
  npm start
}

# runs functions that contain commands
function run {
  startMongo
  installNodeModules
  startApp
}

# script entry point
run
