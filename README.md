# node-sonos-http-api-container

This project is based on this GitHub Project [https://github.com/jishi/node-sonos-http-api](https://github.com/jishi/node-sonos-http-api)

It creates a container based on the latest sources of the mentioned Git Hub Project.

## Steps to install this image local

``` bash
docker build -t oliverscheer/sonos-http-api:latest .
```

## Install it with auto restart and detached

``` bash
docker run --name="sonos-http-api" \
    -p 5005:5005 \
    --restart="always" \
    --detach=true \
    oliverscheer/sonos-http-api:latest
```

## Uninstall it

To remove it from you machine

``` bash

```
