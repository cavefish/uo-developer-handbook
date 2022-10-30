#!/bin/bash

set -e

sed -i 's/127.0.0.1/${HOSTNAME}/' sphere.ini
sed -i 's/My Shard/${SHARDNAME}/' sphere.ini

ls -la

echo "Running ${SHARDNAME} sphere server in ${HOSTNAME}:2593 ..."
./spheresvr


