#!/bin/bash

set -e

docker build . -t sphereserverx --network=host

