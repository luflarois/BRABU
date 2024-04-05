#!/bin/bash
# Brabu installation for Advanced Users

echo -e "\n1. Install pre-requisites and create BRABU directories"
./install_pre_requisites_py3.5.sh
rm -rf $BRABU
mkdir $BRABU

echo -e "\n2. Creating virtual env directory ..."
#python3 -m venv $BRABU
python3.5 -m virtualenv $BRABU

echo -e "\n3. Installing brabu and some dependencies ... "
cd $BRABU && source $BRABU/bin/activate && python3.5 -m pip install -U --no-cache-dir $BRABU_VERSION_NAME

echo -e "\n4. Downloading conda basemap ..."
wget https://anaconda.org/anaconda/basemap/1.0.7/download/linux-64/basemap-1.0.7-np113py35_0.tar.bz2
tar -xvjf basemap-1.0.7-np113py35_0.tar.bz2
rm basemap-1.0.7-np113py35_0.tar.bz2

echo -e "\n5. Installing geos ..."
wget https://anaconda.org/anaconda/geos/3.6.2/download/linux-64/geos-3.6.2-heeff764_2.tar.bz2
tar -xvjf geos-3.6.2-heeff764_2.tar.bz2
rm geos-3.6.2-heeff764_2.tar.bz2