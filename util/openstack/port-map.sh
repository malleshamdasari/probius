#!/bin/bash

sudo ovs-ofctl show br-int | grep addr | grep -v LOCAL | awk -F"(" '{print "Port:" $1 " Interface: " $2}' | awk -F")" '{print $1}'
