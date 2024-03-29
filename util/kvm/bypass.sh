#!/bin/bash

sudo ovs-vsctl del-br ovsbr0 2> /dev/null
sudo ovs-vsctl add-br ovsbr0

sudo ovs-vsctl set-controller ovsbr0 tcp:127.0.0.1:6633
sudo ovs-vsctl -- set bridge ovsbr0 protocols=OpenFlow10
sudo ovs-vsctl set-fail-mode ovsbr0 secure

sudo ovs-vsctl add-port ovsbr0 p3p1 # inbound interface
sudo ovs-vsctl add-port ovsbr0 p3p2 # outbound interface

sudo ovs-ofctl add-flow ovsbr0 in_port=1,actions=output:2
sudo ovs-ofctl add-flow ovsbr0 in_port=2,actions=output:1
