#!/bin/sh

#Make cgminer
make

#Create distributable achrive
echo "Building distributable archive..."
mkdir distrib
cp cgminer.exe bin/
cp -r bin distrib/cgminer-3.7.5-win32
rm bin/cgminer.exe

cd distrib
tar cvf cgminer-3.7.5-win32.tar.gz cgminer-3.7.5-win32
cd ..