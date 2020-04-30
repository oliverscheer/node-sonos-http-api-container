#!/bin/sh
docker build -t oliverscheer/sonos-http-api:latest .

docker run --name="sonos-http-api" \
    -p 5005:5005 \
    --restart="always" \
    --detach=true \
    oliverscheer/sonos-http-api:latest
