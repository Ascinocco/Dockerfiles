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
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
    echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list && \
    apt-get update -y && apt-get install -y mongodb-org && \
    apt-get install -y python2.7 && apt-get install -y python-setuptools

# create app directory
RUN mkdir -p /usr/src/app && mkdir -p /usr/data/db && mkdir -p /usr/mongo-logs && \
    touch /usr/mongo-logs/mongod.log
WORKDIR /usr/src/app

# set env variables
ENV NODE_ENV $NODE_ENV_VAR

CMD ["/bin/bash", "/usr/src/docker/scripts/start.sh"]
