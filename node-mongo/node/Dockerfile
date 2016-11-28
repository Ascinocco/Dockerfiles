FROM anthonyscinocco/ubuntu-custom:14.04
MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 0.1.2

# expose port 8000 for node app
EXPOSE 8000

# get node environment type(development, production)
ARG NODE_ENV_VAR=development

# npm and nodejs
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && apt-get install -y nodejs && \
    apt-get install -y build-essential && apt-get clean

# create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# set env
ENV NODE_ENV $NODE_ENV_VAR
