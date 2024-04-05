#!/bin/bash

echo -e "====== Installing pre-requisites ====="

# PRE-REQUISITES: Python 2.7
sudo apt-get install python2.7

echo -e "\nInstalling pip ..."
sudo apt install python-pip
python2.7 -m pip install --upgrade pip

echo -e "\nInstalling virtualenv ..."
python2.7 -m pip install --user virtualenv

# Install BRABU and dependencies:
echo -e "\n====== Creating Brabu directory and export variable BRABU ====="
BRABU_PY_VERSION='2.7'
BRABU_VERSION_NAME='brabu-py'${BRABU_PY_VERSION}
export BRABU=~/$BRABU_VERSION_NAME
export PYTHONPATH=$BRABU:$BRABU/lib/python${BRABU_PY_VERSION}/site-packages/brabu
export BRABU_DATA_DIR=$BRABU/data


