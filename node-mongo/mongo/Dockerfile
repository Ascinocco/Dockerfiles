FROM anthonyscinocco/ubuntu-custom:14.04
MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 0.1.2

# mongo port
EXPOSE 27017

# install mongodb
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
    echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list && \
    apt-get update -y && apt-get install -y mongodb-org && apt-get clean

# all directories for mongo to run
RUN mkdir -p /usr/mongo/data/db && mkdir -p /usr/mongo/logs && touch /usr/mongo/logs/mongod.log
