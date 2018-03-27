#!/bin/bash

sudo ethtool -K eth1 gro off

sudo ifconfig eth1 promisc

sudo rm -rf /var/log/snort/*

if [ -z $1 ]; then
	sudo snort -i eth1 -c /etc/snort/snort.conf
elif [ $1 == "b" ]; then
	sudo snort -i eth1 -c /etc/snort/snort.conf -D
fi
