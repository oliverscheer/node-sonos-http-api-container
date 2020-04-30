#!/bin/sh
docker build -t oliverscheer/sonos-http-api:latest .

# docker run \
#     --net=host \
#     --name="sonos-http-api" \
#     --restart="always" \
#     --detach=true \
#     oliverscheer/sonos-http-api:latest

# --net=host is not working on docker for windows, you have to use the following
docker run \
    -p 5005:5005 \
    --name="sonos-http-api" \
    --restart="always" \
    --detach=true \
    oliverscheer/sonos-http-api:latest

