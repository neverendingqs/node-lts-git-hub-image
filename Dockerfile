FROM node:lts-slim
WORKDIR /action

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y curl git

RUN npm i -g npm-check-updates && \
  curl -fsSL https://github.com/github/hub/raw/master/script/get | bash -s 2.14.1
