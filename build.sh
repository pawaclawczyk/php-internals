#!/bin/bash

if [ -z $1 ]; then
  VERSION=7;
else
  VERSION=$1;
fi

docker build --rm=true -t php-internals:$VERSION v$VERSION
