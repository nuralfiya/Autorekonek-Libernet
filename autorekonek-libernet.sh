#!/bin/bash
#rekonek libernet (Alfiya)
route="$(netstat -plantu | grep -i 1080 | grep -i listen)" 
route2="$(netstat -plantu | grep -i 1080 | grep -i listen)" 
route3="$(netstat -plantu | grep -i 1080 | grep -i listen)" 
echo $route
	if [[ -z $route2 ]]; then
		   export LIBERNET_DIR="/root/libernet" && /root/libernet/bin/service.sh -ds
                   export LIBERNET_DIR="/root/libernet" && /root/libernet/bin/service.sh -as
           exit
    elif [[ -z $route3 ]]; then
           export LIBERNET_DIR="/root/libernet" && /root/libernet/bin/service.sh -ds
           export LIBERNET_DIR="/root/libernet" && /root/libernet/bin/service.sh -as
           exit
           elif [[ -z $route ]]; then
           export LIBERNET_DIR="/root/libernet" && /root/libernet/bin/service.sh -ds
           export LIBERNET_DIR="/root/libernet" && /root/libernet/bin/service.sh -as
	fi
