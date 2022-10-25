#!/bin/bash

set -ed

docker build . -t sphereserverx --network=host

