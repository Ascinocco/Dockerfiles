#!/usr/bin/env bash

# removes all images, stopping and removing
# dependant containers must happen first
docker stop $(docker ps -a -q)
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -q)
echo "Images Removed... Goodbye..."
