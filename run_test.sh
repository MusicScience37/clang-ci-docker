#!/bin/bash -e

# run test of this project

if [ "$#" -ne 1 ] || ! [ -d "$1" ]; then
  echo "Usage: $0 <directory>" >&2
  exit 1
fi

compose_file=$1/docker-compose.test.yml
docker-compose -f $compose_file up --build
docker-compose -f $compose_file down
