FROM ubuntu:16.04
MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 0.1

# grab arguments
ARG NODE_ENV_VAR
ARG CODE_DIR

# run updates and upgrades
RUN apt-get update -y && apt-get upgrade -y

# install curl and git
RUN apt-get install -y curl && apt-get install -y git

# install node and npm
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && apt-get install -y nodejs && \
    apt-get install -y build-essential

# install mern-cli to build the app
RUN npm install -g mern-cli

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD $CODE_DIR /usr/src/app

# RUN mern init app
# # WORKDIR /usr/src/app
# # RUN npm install
# # COPY . /usr/src/app

ENV NODE_ENV $NODE_ENV_VAR
ENV NODE_PORT 8000

EXPOSE 8000
# CMD ["npm", "start"]
