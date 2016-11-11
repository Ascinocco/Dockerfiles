FROM ubuntu:16.04

MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 0.1

# update system
RUN apt-get update -y && apt-get upgrade -y

# install curl to pull in ppa and nodesource script
RUN apt-get install -y curl

# install node, npm and git
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && apt-get install -y nodejs && \
    apt-get install -y build-essential && apt-get install -y git

# spin up mern example app
RUN npm install -g mern-cli

EXPOSE 80
