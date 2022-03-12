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
cek_enable=$(cat /etc/crontabs/root | grep -o autorekonek-libernet)
# CEK STTAUS ENABLE
if [[ $cek_enable == "autorekonek-libernet" ]]; then 
   ON=" ${BG}Running"
else
   ON=" ${R}Not Running"
fi


clear
echo -e "$BR              Menu Libernet By (Alfiya)"
echo -e "$DB ************************************************"
echo -e "$DB *$G 1. Enable Auto Boot & Auto Rekonek Libernet $BP ($ON $BP) $DB*"
echo -e "$DB *$G 2. Disable Auto Boot & Auto Rekonek Libernet $DB*"
echo -e "$DB *$G 3. Cek Status Koenksi SSH Libernet $DB*"
echo -e "$DB *$G 4. Update Scrip $DB*"
echo -e "$DB *$G e. Exit $DB*"
echo -e "$DB ************************************************"
read -p "(default pilihan: e) : " tools
[ -z "${tools}" ] && tools="e"
if [ "$tools" = "1" ]; then
sed -i "/^# BEGIN AUTOREKONEK LIBERNET/,/^# END AUTOREKONEK LIBERNET/d" /etc/crontabs/root > /dev/null
cat <<EOF>> /etc/crontabs/root
# BEGIN AUTOREKONEK LIBERNET
*/1 * * * *  autorekonek-libernet
# END AUTOREKONEK LIBERNET
EOF
sed -i '/^$/d' /etc/crontabs/root 2>/dev/null
/etc/init.d/cron restart
echo "Enable Suksess"
sleep 2
clear
/usr/bin/libernet
elif [ "${tools}" = "2" ]; then
sed -i "/^# BEGIN AUTOREKONEK LIBERNET/,/^# END AUTOREKONEK LIBERNET/d" /etc/crontabs/root > /dev/null
/etc/init.d/cron restart
echo "Disable Suksess"
sleep 2
clear
/usr/bin/libernet
elif [ "${tools}" = "3" ]; then
cat /tmp/http-injector.log
sleep 3
clear
/usr/bin/libernet
elif [ "$tools" = "4" ]; then
cd /root/mod
wget -O update.sh "https://raw.githubusercontent.com/nuralfiya/Autorekonek-Libernet/main/update.sh"
bash update.sh
sleep 3
cd
/usr/bin/libernet
elif [ "${tools}" = "e" ]; then
clear
exit
else 
echo -e "$tools: Pilih dengan benar."
exit
fi
