#!/bin/bash

printf "Running NOIP DUC installation"
cd /usr/local/src

printf "Downloading DUC"
wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz

printf "DUC Downloaded"

printf "Extracting DUC"
tar xzf noip-duc-linux.tar.gz
cd noip-2.1.9-1

printf "Compiling DUC"
make

printf "Installing DUC"
make install


printf "Finished"
