FROM anthonyscinocco/ubuntu-custom:14.04
MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 1

# run updates, upgrades and default required packages
RUN apt-get update -y && apt-get upgrade -y && apt-get clean
RUN apt-get install -y curl && apt-get install -y git && apt-get clean
RUN apt-get install -y python2.7 && apt-get install -y python-setuptools && apt-get clean
