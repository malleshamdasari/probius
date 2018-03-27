#!/bin/bash

sudo ifconfig eth1 up
sudo ifconfig eth2 up

sudo ifconfig eth1 $1 netmask $2
sudo ifconfig eth2 $3 netmask $4

sudo iptables -t nat -A POSTROUTING -o eth2 -j MASQUERADE
sudo iptables -A FORWARD -i eth1 -o eth2 -m state --state ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A FORWARD -i eth2 -o eth1 -j ACCEPT

# TODO: edit the following rules for your environment
sudo iptables -t nat -A PREROUTING -p tcp -i eth1 --dport 80 -j DNAT --to 192.168.20.20:80
sudo iptables -t nat -A PREROUTING -p tcp -i eth1 --dport 5201 -j DNAT --to 192.168.20.20:5201
