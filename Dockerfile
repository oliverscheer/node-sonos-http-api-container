FROM ubuntu:18.04 as gitclone

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

WORKDIR /usr/src/app

RUN git clone https://github.com/jishi/node-sonos-http-api.git

FROM node:14 as build

WORKDIR /usr/src/app

COPY --from=gitclone /usr/src/app/node-sonos-http-api ./

# COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 5005

CMD [ "node", "server.js" ]
