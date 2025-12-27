# clang-ci-docker

[![pipeline status](https://gitlab.com/MusicScience37Projects/docker/clang-ci-docker/badges/main/pipeline.svg)](https://gitlab.com/MusicScience37Projects/docker/clang-ci-docker/-/commits/main)
![Docker Pulls](https://img.shields.io/docker/pulls/musicscience37/clang-ci)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/musicscience37/clang-ci/latest)

Docker container image for CI of C/C++ with Clang compiler

The version of Clang is as following:

- clang15
- clang16
- clang17
- clang18
- clang19
- clang20
- clang21
- clang22

## Container Registries

You can pull automatically built images from following registries:

- [GitLab Container Registry](https://gitlab.com/MusicScience37Projects/docker/clang-ci-docker/container_registry)
  - latest stable image: `registry.gitlab.com/musicscience37/clnag-ci-docker`
- [Docker Hub](https://hub.docker.com/r/musicscience37/clang-ci)
  - latest stable image: `docker pull musicscience37/clang-ci`

## Repositories

- [GitLab](https://gitlab.com/MusicScience37Projects/docker/clang-ci-docker):
  for development including CI
- [Github](https://github.com/MusicScience37/clang-ci-docker):
  mirror repository

## Testing

For test of this project,
use `./tool.py test` command.
