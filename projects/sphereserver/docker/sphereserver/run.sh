#!/bin/bash

set -e

function initializeFile() {
  if [ ! -f "$1" ]; then
    cp empty.scp "$1"
  fi
}

sed -i 's/127.0.0.1/${HOSTNAME}/' sphere.ini
sed -i 's/My Shard/${SHARDNAME}/' sphere.ini
sed -i 's/\/\/MulFiles=mul\//MulFiles=mul\//' sphere.ini
sed -i 's/UseNoCrypt=0/UseNoCrypt=1/' sphere.ini
sed -i 's/AutoAccountCreation=0/AutoAccountCreation=${AUTO_ACCOUNT_CREATION}/' sphere.ini


initializeFile "save/spheredata.scp"
initializeFile "save/spherestatics.scp"
initializeFile "save/spheremultis.scp"
initializeFile "save/sphereworld.scp"
initializeFile "save/spherechars.scp"

ls -la

echo "Running ${SHARDNAME} sphere server in ${HOSTNAME}:2593 ..."
./spheresvr


