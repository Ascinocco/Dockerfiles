#!/usr/bin/env bash

# This script is meant to be run within the container as the starting
# point for mongodb
# run mongo server
mongod --dbpath /usr/mongo/data/db --logpath /usr/mongo/logs/mongod.log
