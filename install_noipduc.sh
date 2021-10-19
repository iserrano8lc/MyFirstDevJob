#!/bin/bash

printf "Running NOIP DUC installation"
cd /usr/local/src

printf "Downloading DUC"
wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
tar xzf noip-duc-linux.tar.gz
cd noip-2.1.9-1

printf "Compiling DUC"
make
make install


printf "Finished"
