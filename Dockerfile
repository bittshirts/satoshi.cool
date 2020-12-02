# base image
FROM node:12.2.0-alpine

# set working directory
WORKDIR /app

COPY package.json /app 
COPY yarn.lock /app
COPY . /app

RUN yarn install
RUN yarn build

#COPY . /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# start app
CMD ["yarn", "run", "serve"]