#!/usr/bin/env bash

# ------------------------------------ #
# ------------start.sh---------------- #
# ---Runs the app required processes-- #
# -------Author: Anthony Scinocco----- #
# ----------November 12, 2016--------- #
# ------------------------------------ #

# All processes should run in the background expen npm start
mongod --dbpath /usr/data/db --fork --logpath /usr/mongo-logs/mongod.log
npm start
