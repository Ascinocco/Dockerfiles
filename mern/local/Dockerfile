FROM ubuntu:16.04
MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 0.1

# run updates and upgrades
RUN apt-get update -y && apt-get upgrade -y

# install curl and git
RUN apt-get install -y curl && apt-get install -y git

# install node and npm
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && apt-get install -y nodejs && \
    apt-get install -y build-essential

RUN mkdir -p /usr/src
WORKDIR /usr/src
# COPY package.json /usr/src/app
RUN npm install -g mern-cli

RUN mern init app
WORKDIR /usr/src/app
RUN npm install
# COPY . /usr/src/app

ENV NODE_ENV development

EXPOSE 8000
CMD ["npm", "start"]
