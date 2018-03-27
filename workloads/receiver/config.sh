#!/bin/bash

# TODO: edit the name of a target interface and the IP addresses for workload generators

INTERFACE="p10p1"
IP_ADDR=`ifconfig $INTERFACE | grep "inet addr" | awk '{print $2}' | awk -F":" '{print $2}'`

SENDER_NET="192.168.10.0"

RECEIVER_IP="192.168.10.20"

RECEIVER_NAT_IP="192.168.20.20"
RECEIVER_NAT_GW="192.168.20.1"
