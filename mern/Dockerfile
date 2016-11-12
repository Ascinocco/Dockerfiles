FROM anthonyscinocco/mern:latest
MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 0.2

# expose required ports
EXPOSE 8000

# grab arguments
ARG NODE_ENV_VAR

# run updates and upgrades
RUN apt-get update -y && apt-get upgrade -y

# install curl and git
RUN apt-get install -y curl && apt-get install -y git

# install node and npm
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && apt-get install -y nodejs && \
    apt-get install -y build-essential && \
    apt-get install -y python2.7 && apt-get install -y python-setuptools

# install mern-cli to build the app
RUN npm install -g mern-cli

# create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# set env variables
ENV NODE_ENV $NODE_ENV_VAR

CMD ["npm", "start"]
