FROM ubuntu:14.04
MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 1

# expose node app
EXPOSE 8000

# get node environment type(development, production)
ARG NODE_ENV_VAR=development

# run updates
RUN apt-get update -y && apt-get upgrade -y && apt-get clean
