# node-sonos-http-api-container

This project is based on this GitHub Project [https://github.com/jishi/node-sonos-http-api](https://github.com/jishi/node-sonos-http-api)

It creates a container based on the latest sources of the mentioned Git Hub Project. Dockerfile is based on [https://github.com/mkshb/docker-sonoshttpapi](https://github.com/mkshb/docker-sonoshttpapi).

## Steps to install this image local

``` bash
docker build -t oliverscheer/sonos-http-api:latest .
```

## Install it with auto restart and detached

Use this when you use Docker for Windows

``` bash
docker run --name="sonos-http-api" \
    -p 5005:5005 \
    --restart="always" \
    --detach=true \
    oliverscheer/sonos-http-api:latest
```

Use this on Real Linux (without Docker for Windows)

``` bash
docker run --name="sonos-http-api" \
    --net=host \
    --restart="always" \
    --detach=true \
    oliverscheer/sonos-http-api:latest
```

## Change autostart

``` bash
# Disable
docker update --restart=no sonos-http-api

# Always
docker update --restart=always sonos-http-api
```

## Uninstall it

To remove it from you machine

``` bash
# stop container
docker stop sonos-http-api

#remove container
docker rm sonos-http-api

# remove image
docker image rm oliverscheer/sonos-http-api
```

## Scripts

setup.sh builds and runs the container.\
remove.sh removes it from the machine.

Run before using these scripts:

``` bash
chmod +x setup.sh
chmod +x remove.sh
```

## Interactive

``` bash
docker run \
    --name="sonos-http-api" \
    -p 5005:5005 \
    -it \
    oliverscheer/sonos-http-api:latest \
    /bin/bash
```


## misc

current image size = 993 MB

mkshb/sonoshttpapi                               latest                  29acea11a3e1        29 minutes ago      129MB