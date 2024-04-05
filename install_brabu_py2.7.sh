#!/bin/bash
# Brabu installation for Advanced Users

echo -e "\n1. Install pre-requisites and create BRABU directories"
./install_pre_requisites_py2.7.sh
rm -rf $BRABU
mkdir $BRABU

echo -e "\n2. Creating virtual env directory ..."
#python3 -m venv $BRABU
python2.7 -m virtualenv $BRABU

echo -e "\n3. Installing brabu and some dependencies ... "
cd $BRABU && source $BRABU/bin/activate && python2.7 -m pip install -U --no-cache-dir $BRABU_VERSION_NAME

echo -e "\n4. Downloading conda basemap ..."
wget https://anaconda.org/anaconda/basemap/1.0.7/download/linux-64/basemap-1.0.7-np111py27_0.tar.bz2
tar -xvjf basemap-1.0.7-np111py27_0.tar.bz2
rm basemap-1.0.7-np111py27_0.tar.bz2

echo -e "\n5. Installing geos ..."
wget https://anaconda.org/anaconda/geos/3.4.2/download/linux-64/geos-3.4.2-0.tar.bz2
tar -xvjf geos-3.4.2-0.tar.bz2
rm geos-3.4.2-0.tar.bz2

echo -e "\n6. Downloading Qt4..."
wget https://anaconda.org/pkgw-forge/qt4/4.8.7/download/linux-64/qt4-4.8.7-3.tar.bz2
tar -xvjf qt4-4.8.7-3.tar.bz2
rm qt4-4.8.7-3.tar.bz2

echo -e "\n7. Downloading PyQt4..."
wget https://anaconda.org/anaconda/pyqt/4.11.4/download/linux-64/pyqt-4.11.4-py27_4.tar.bz2
tar -xvjf pyqt-4.11.4-py27_4.tar.bz2
rm pyqt-4.11.4-py27_4.tar.bz2

echo -e "\n8. Downloading Sip..."
wget https://anaconda.org/anaconda/sip/4.18/download/linux-64/sip-4.18-py27_0.tar.bz2
tar -xvjf sip-4.18-py27_0.tar.bz2
rm sip-4.18-py27_0.tar.bz2
