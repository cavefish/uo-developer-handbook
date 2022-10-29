#!/bin/bash

set -e

docker build . -t sphereserver --network=host --build-arg BRANCH=56c-20160410

