#!/bin/bash

sudo brctl addbr br0

sudo brctl addif br0 eth1
sudo brctl addif br0 eth2

sudo brctl stp br0 off

sudo ifconfig br0 $1 netmask $2 up

# TODO: edit the absolute path for your environment
/home/ubuntu/firewall/restore.sh
