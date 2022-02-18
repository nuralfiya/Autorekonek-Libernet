#!/bin/bash
#tjt (Wegare)
route="$(ifconfig | grep -o tun1)" 
route2="$(route | grep -i 10.0.0.2 | head -n1 | awk '{print $2}')" 
route3="$(netstat -plantu | grep -i 1080 | grep -i listen)" 
echo $route
	if [[ -z $route2 ]]; then
		   export LIBERNET_DIR="/root/libernet" && screen -AmdS libernet /root/libernet/bin/service.sh -ds
                   sleep 5
                   export LIBERNET_DIR="/root/libernet" && screen -AmdS libernet /root/libernet/bin/service.sh -as
           exit
    elif [[ -z $route3 ]]; then
           export LIBERNET_DIR="/root/libernet" && screen -AmdS libernet /root/libernet/bin/service.sh -ds
           sleep 5
           export LIBERNET_DIR="/root/libernet" && screen -AmdS libernet /root/libernet/bin/service.sh -as
           exit
           elif [[ -z $route ]]; then
           export LIBERNET_DIR="/root/libernet" && screen -AmdS libernet /root/libernet/bin/service.sh -ds
           sleep 5
           export LIBERNET_DIR="/root/libernet" && screen -AmdS libernet /root/libernet/bin/service.sh -as
           exit
	fi
