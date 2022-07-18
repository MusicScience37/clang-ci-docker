# clang-ci-docker

[![dockeri.co](https://dockeri.co/image/musicscience37/clang-ci)](https://hub.docker.com/r/musicscience37/clang-ci)

[![pipeline status](https://gitlab.com/MusicScience37/clang-ci-docker/badges/main/pipeline.svg)](https://gitlab.com/MusicScience37/clang-ci-docker/-/commits/main)

Docker container image for CI of C/C++ with Clang compiler

The version of Clang is as following:

- clang11
- clang12
- clang13
- clang14
- clang15

## Container Registries

You can pull automatically built images from following registries:

- [GitLab Container Registry](https://gitlab.com/musicscience37/clang-ci-docker/container_registry)
  - latest stable image: `registry.gitlab.com/musicscience37/clnag-ci-docker:clang10`
- [Docker Hub](https://hub.docker.com/r/musicscience37/clang-ci)
  - latest stable image: `docker pull musicscience37/clang-ci`

## Repositories

- [GitLab](https://gitlab.com/musicscience37/clang-ci-docker):
  for development including CI
- [Github](https://github.com/MusicScience37/clang-ci-docker):
  mirror repository

## Testing

For test of this project,
use `./tool.py test` command.
