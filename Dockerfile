# base image
FROM node:10.17.0-alpine

RUN rm -rf /tmp/node_modules

# set working directory
WORKDIR /backend

# add `/backend/node_modules/.bin` to $PATH
ENV PATH /backend/node_modules/.bin:$PATH

# install and cache backend dependencies
COPY package.json /backend/package.json
RUN npm install

# add backend
COPY . /backend

EXPOSE 3000

# start backend
CMD npm run start:dev
