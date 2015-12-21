#!/bin/bash

if [ -z $1 ]; then
  VERSION=7;
else
  VERSION=$1;
fi

docker run --rm -it -v $PWD/tests:/app -w /app php-internals:$VERSION /bin/bash
