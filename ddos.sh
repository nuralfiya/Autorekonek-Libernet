#!/bin/bash
#ddos by Nur_alfiyaku
sudo apt install dnsutils
sudo apt-get install net-tools
sudo apt-get install tcpdump
sudo apt-get install dsniff -y
sudo apt install grepcidr
wget https://github.com/jgmdev/ddos-deflate/archive/master.zip -O ddos.zip
unzip ddos.zip
cd ddos-deflate-master
./install.sh
