#!/bin/bash

if [[ "x$1" == "x" ]]; then
    echo "need param as NODE_NAME"
    exit 1
fi
export NODE_NAME=$1

dataDir="/data/es/${NODE_NAME}-data/"
logDir="/data/es/${NODE_NAME}-log/"

sudo mkdir $dataDir -p
sudo mkdir $logDir -p

sudo chmod g+rwx $dataDir
sudo chmod g+rwx $logDir

sudo chgrp 1000 $dataDir
sudo chgrp 1000 $logDir
