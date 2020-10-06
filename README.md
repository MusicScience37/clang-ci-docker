# clang-ci-docker

[![dockeri.co](https://dockeri.co/image/musicscience37/gcc-ci)](https://hub.docker.com/r/musicscience37/clang-ci)

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/musicscience37/clang-ci)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/musicscience37/clang-ci)

![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/MusicScience37/clang-ci-docker?label=latest)

[![pipeline status](https://gitlab.com/musicscience37_ci/clang-ci-docker/badges/develop/pipeline.svg)](https://gitlab.com/musicscience37_ci/clang-ci-docker/commits/develop)

Docker container image for CI of C/C++ with Clang compiler

The version of Clang is as following:

| Tag of Container  | Version of Clang |
| :---------------- | :--------------- |
| clang8            | 8.0.1            |
| clang9 (latest)   | 9.0.1            |
| clang10 (testing) | 10.0.0           |

## Container Registries

You can pull automatically built images from following registries:

- [GitLab Container Registry](https://gitlab.com/musicscience37_ci/clang-ci-docker/container_registry)
  - latest stable image: `registry.gitlab.com/musicscience37_ci/clnag-ci-docker:clang9`
- [Docker Hub](https://hub.docker.com/r/musicscience37/clang-ci)
  - latest stable image: `docker pull musicscience37/clang-ci`

## Repositories

- [GitLab](https://gitlab.com/musicscience37_ci/clang-ci-docker):
  for development including CI
- [Github](https://github.com/MusicScience37/clang-ci-docker):
  mirror repository for use in Docker Hub

## Test

To run a test of this project, execute the `run_test.sh` script.
It requires docker and docker-compose commands installed.
