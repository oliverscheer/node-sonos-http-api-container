#!/bin/sh
docker stop sonos-http-api

docker rm sonos-http-api

docker image rm oliverscheer/sonos-http-api