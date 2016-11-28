#!/usr/bin/env bash

# stops and removes all containers
docker stop $(docker ps -a -q)
docker rm -f $(docker ps -a -q)
echo "Containers have been killed... Goodbye..."
