FROM node
MAINTAINER jaga santagostino <kandros5591@gmail.com>

RUN mkdir -p /usr/src
WORKDIR /usr/src
# COPY package.json /usr/src/app
RUN npm install -g mern-cli

RUN mern init app
WORKDIR /usr/src/app
RUN npm install
# COPY . /usr/src/app

ENV NODE_ENV production

EXPOSE 80
CMD ["npm", "run", "bs"]
