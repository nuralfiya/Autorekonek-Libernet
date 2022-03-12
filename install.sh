#!/bin/bash
#Libernet Mod (Alfiya)

#-- colors v2 --#
R='\e[31;1m' #RED
G='\e[32;1m' #GREEN
Y='\e[33;1m' #YELLOW
DB='\e[34;1m' #DARKBLUE
P='\e[35;1m' #PURPLE
LB='\e[36;1m' #LIGHTBLUE

#-- colors v3 --#
BR='\e[3;31m' #RED
BG='\e[3;32m' #GREEN
BY='\e[3;33m' #YELLOW
BDB='\e[3;34m' #DARKBLUE
BP='\e[3;35m' #PURPLE
BLB='\e[3;36m' #LIGHTBLUE

clear
echo -e "$DB *$G REMOVING DUPLICATE SCRIP $DB*"
rm /usr/bin/libernet
rm /usr/bin/autorekonek-libernet
clear
echo -e "$DB *$G INSATALLING SCRIP TOOLS_LIBERNET $DB*"
wget -O install.sh "https://github.com/nuralfiya/Autorekonek-Libernet/blob/main/libernet.sh"
bash install.sh
sleep 2
mkdir /root/mod
cd /usr/bin
wget -O libernet "https://github.com/nuralfiya/Autorekonek-Libernet/blob/main/libernet.sh"
wget -O autorekonek-libernet "https://github.com/nuralfiya/Autorekonek-Libernet/blob/main/autorekonek-libernet.sh"
chmod +x /usr/bin/libernet
chmod +x /usr/bin/autorekonek-libernet
cd
echo -e "$DB *$G LIBERNET-TOOLS HAS BEN INSTALLED  $DB*"
echo -e "$DB *$G Silahkan tulis $R libernet $G pada terminal untuk meliat menu scrip  $DB*"
echo -e "$DB *$G Created By $R ($G Alfiya $R ) $DB*"
libernet
