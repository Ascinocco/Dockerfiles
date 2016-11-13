FROM anthonyscinocco/ubuntu-custom:14.04
MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 1

# expose node app
EXPOSE 8000

# get node environment type(development, production)
ARG NODE_ENV_VAR=development

# npm and nodejs
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && apt-get install -y nodejs && \
    apt-get install -y build-essential && apt-get clean

# create create directories for node and start script
RUN mkdir -p /usr/src/app && mkdir -p /usr/src/docker/scripts
COPY ./scripts/start.sh /usr/src/docker/scripts
WORKDIR /usr/src/app

ENV NODE_ENV $NODE_ENV_VAR

CMD ["/bin/bash","/usr/src/docker/scripts/start.sh"]
