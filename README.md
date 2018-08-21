# docker-image.template

## Description

### `TL;DR`

[Ecology](https://github.com/irreverent-pixel-feats/ecology) Template for Docker image only projects.

## Bootstrap API

On top of the default environment passed to the bootstrap script by `ecology`, this template
requires `ecology` to pass it the following variables:

| Name                                 | Description                                |
|--------------------------------------|--------------------------------------------|
| `ECOLOGY_DOCKER_BASE_IMAGE`          | The base image to build the image on       |
| `ECOLOGY_DOCKER_IMAGE_NAME_INTERNAL` | The name for the version file in the image |
| `ECOLOGY_MAINTAINER_NAME`            | The name of the initial maintainer         |
| `ECOLOGY_MAINTAINER_EMAIL`           | The email for the initial maintainer       |
| `ECOLOGY_DOCKER_REPO`                | The repo to publish the image to           |
