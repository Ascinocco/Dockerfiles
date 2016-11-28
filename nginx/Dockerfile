FROM anthonyscinocco/ubuntu-custom:14.04
MAINTAINER Anthony Scinocco <scinocco.a@gmail.com> Version 0.0.1

# port 80 for http and 443 for https
EXPOSE 80 443

# check for updates and install nginx
RUN apt-get -y update && apt-get -y upgrade && apt-get clean
RUN apt-get install -y nginx && apt-get clean
RUN mkdir -p /usr/nginx/scripts

COPY ./start.sh /usr/nginx/scripts
