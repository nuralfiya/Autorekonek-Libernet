#!/bin/bash
sudo apt install dnsutils
sudo apt-get install net-tools
sudo apt-get install tcpdump
sudo apt-get install dsniff -y
sudo apt install grepcidr
wget https://github.com/jgmdev/ddos-deflate/archive/master.zip -O ddos.zip
unzip ddos.zip
cd ddos-deflate-master
./install.sh
cd
wget https://raw.githubusercontent.com/nuralfiya/Autorekonek-Libernet/main/ddos.sh
wget https://raw.githubusercontent.com/nuralfiya/Autorekonek-Libernet/main/ddos.conf
wget https://raw.githubusercontent.com/nuralfiya/Autorekonek-Libernet/main/ignore.ip.list
cp ddos.sh /usr/local/ddos/ddos.sh
chmod +x /usr/local/ddos/ddos.sh
cp ddos.conf /etc/ddos/ddos.conf
cp ignore.ip.list /etc/ddos/ignore.ip.list
echo "sukses"
reboot
