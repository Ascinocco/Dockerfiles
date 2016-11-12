FROM anthonyscinocco/mern:latest

MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 0.4

# TODO: remove node port, open nginx port and forward node port to nginx
# node port
EXPOSE 8000

# mongo port for mongotron
EXPOSE 27017

# expose NGINX
EXPOSE 80

# grab arguments
ARG NODE_ENV_VAR

# run updates and upgrades
RUN apt-get update -y && apt-get upgrade -y && apt-get clean

# install curl and git
RUN apt-get install -y curl && apt-get install -y git && apt-get clean

# install node and npm
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && apt-get install -y nodejs && \
    apt-get install -y build-essential && apt-get clean

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
    echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list && \
    apt-get update -y && apt-get install -y mongodb-org && apt-get clean

RUN apt-get install -y python2.7 && apt-get install -y python-setuptools && \
    apt-get install -y nginx && apt-get clean

# copy over nginx config
COPY ./docker/nginx-conf/default /etc/nginx/sites-available/default
COPY ./docker/nginx-conf/nginx.conf /etc/nginx/nginx.conf

# create app directory
RUN mkdir -p /usr/src/app && mkdir -p /usr/data/db && mkdir -p /usr/mongo-logs && \
    touch /usr/mongo-logs/mongod.log
WORKDIR /usr/src/app

# set env variables
ENV NODE_ENV $NODE_ENV_VAR

# default to my start script
CMD ["/bin/bash", "/usr/src/docker/scripts/start.sh"]
