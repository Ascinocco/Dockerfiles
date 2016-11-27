#!/usr/bin/env bash

# ------------------------------------ #
# ------------start.sh---------------- #
# ---Runs the app required processes-- #
# -------Author: Anthony Scinocco----- #
# ----------November 12, 2016--------- #
# ------------------------------------ #

function run {
  mongod --dbpath /usr/data/db --logpath /usr/mongo-logs/mongod.log
}

run
