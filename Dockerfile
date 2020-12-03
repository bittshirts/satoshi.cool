# base image
FROM node:12.2.0-alpine as builder

WORKDIR /app

COPY . /app
RUN yarn install
RUN yarn build

FROM nginx:1.19.5-alpine
COPY --from=builder /app/dist /usr/share/nginx/html