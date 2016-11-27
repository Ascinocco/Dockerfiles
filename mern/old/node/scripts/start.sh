#!/usr/bin/env bash

# ------------------------------------ #
# ------------start.sh---------------- #
# ---Runs the app required processes-- #
# -------Author: Anthony Scinocco----- #
# ----------November 12, 2016--------- #
# ------------------------------------ #

# function installNodeModules {
#   npm install
# }

function startApp {
  # npm start
  node server.js
}

function run {
  # installNodeModules
  startApp
}

run
