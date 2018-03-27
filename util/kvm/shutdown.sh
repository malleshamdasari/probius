#!/bin/bash

virsh shutdown firewall 2> /dev/null > /dev/null
sleep 1
virsh shutdown netsniff-ng 2> /dev/null > /dev/null
sleep 1
virsh shutdown snort-ids 2> /dev/null > /dev/null
sleep 1
virsh shutdown suricata-ids 2> /dev/null > /dev/null
sleep 1
virsh shutdown suricata-ips 2> /dev/null > /dev/null
sleep 1
virsh shutdown tcpdump 2> /dev/null > /dev/null
sleep 1
virsh shutdown NAT 2> /dev/null > /dev/null
sleep 1
