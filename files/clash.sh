#!/bin/bash

ENABLED=🌐 
DISABLED=🔴 

if ss -tnulp|grep -q 7890; then
        ~/Downloads/clash-for-linux/shutdown.sh > /dev/null 2>&1
	echo $DISABLED ;
else
	~/Downloads/clash-for-linux/start.sh > /dev/null 2>&1
	echo $ENABLED ;
fi

