# FROM ubuntu:18.04 as gitclone

# RUN apt-get update && \
#     apt-get upgrade -y && \
#     apt-get install -y git

# WORKDIR /usr/src/app

# RUN git clone https://github.com/jishi/node-sonos-http-api.git

# FROM node:14 as build

# WORKDIR /usr/src/app

# COPY --from=gitclone /usr/src/app/node-sonos-http-api ./

# # COPY package*.json ./

# RUN npm install --production

# COPY . .

# EXPOSE 5005

# CMD [ "node", "server.js" ]
# mkshb.de - Dockerfile to publish Node-Sonos-HTTP-API

FROM node:11-alpine

RUN mkdir /app

WORKDIR /app

RUN apk	--no-cache add curl 
RUN curl -L https://github.com/jishi/node-sonos-http-api/archive/master.tar.gz --output master.tar.gz
RUN tar xvzf master.tar.gz --strip=1 -C /app
RUN rm master.tar.gz
RUN mkdir cache 
RUN ln -s settings/settings.json
RUN chown -R node:node static cache
RUN npm install --production

EXPOSE 5005

USER node

HEALTHCHECK --interval=1m --timeout=2s CMD curl -LSs http://localhost:5005 || exit 1

CMD npm start
