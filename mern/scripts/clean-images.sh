#!/usr/bin/env bash

# stops and removes containers
# deletes images
function removeContainers() {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
  docker rmi -f $(docker images -q)
}

removeContainers
