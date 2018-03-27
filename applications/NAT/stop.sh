#!/bin/bash

sudo iptables -t nat -F
sudo iptables -F

sudo ifconfig eth1 0.0.0.0
sudo ifconfig eth2 0.0.0.0

sudo ifconfig eth1 down
sudo ifconfig eth2 down
