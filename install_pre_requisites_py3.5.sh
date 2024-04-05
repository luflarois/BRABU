#!/bin/bash

echo -e "====== Installing pre-requisites ====="

# PRE-REQUISITES: Python 3.5
#    If you can't find python3.5 version, you may run it before install:
#    sudo add-apt-repository ppa:deadsnakes/ppa
#    sudo apt-get update
sudo apt-get install python3.5

echo -e "\nInstalling pip ..."
sudo apt install python3-pip
python3.5 -m pip install --upgrade pip

echo -e "\nInstalling virtualenv ..."
python3.5 -m pip install --user virtualenv

echo -e "\n\n====== Creating Brabu directory and export variable BRABU ====="
BRABU_PY_VERSION='3.5'
BRABU_VERSION_NAME='brabu-py'${BRABU_PY_VERSION}
export BRABU=~/$BRABU_VERSION_NAME
export PYTHONPATH=$BRABU:$BRABU/lib/python${BRABU_PY_VERSION}/site-packages/brabu
export BRABU_DATA_DIR=$BRABU/data

