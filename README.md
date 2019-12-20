# ecs-deploy-docker docker image

Image used for running [ecs-deploy](https://github.com/silinternational/ecs-deploy)

[![license](https://img.shields.io/github/license/adlogix/ecs-deploy-docker.svg)]()
[![docker](https://img.shields.io/docker/pulls/adlogix/ecs-deploy)](https://hub.docker.com/r/adlogix/ecs-deploy)

## Supported tags and respective `Dockerfile` links

* [`3.7.1`, `3.7`, `latest`](https://github.com/adlogix/ecs-deploy-docker/blob/master/Dockerfile)
* [`3.6.0`, `3.6`](https://github.com/adlogix/ecs-deploy-docker/blob/3.6.0/Dockerfile)

## Build command

    docker build -t adlogix/ecs-deploy .

## Build an app

    docker run -ti --rm adlogix/ecs-deploy
