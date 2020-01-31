#!/bin/bash -e

# this is a shell script to build an image and make a shell from the image

if [ "$#" -ne 1 ] || ! [ -d "$1" ]; then
  echo "Usage: $0 <directory>" >&2
  exit 1
fi

docker build -t clang-ci:$1 $1
docker run --rm -it clang-ci:$1 bash
