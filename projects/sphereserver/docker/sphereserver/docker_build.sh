#!/bin/bash

set -e

docker build . -t sphereserver --network=host --build-arg SOURCEBRANCH=56c-20160410 --build-arg SCRIPTSBRANCH=master

