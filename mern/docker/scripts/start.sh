#!/usr/bin/env bash
mongod --dbpath /usr/data/db --fork --logpath /usr/mongo-logs/mongod.log
npm start
