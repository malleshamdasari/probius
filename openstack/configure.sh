#!/bin/bash

cd ~
. ./keystonerc_admin

openstack flavor create --ram 2048 --disk 20 --vcpus 2 "Minimum VNF"
openstack flavor create --ram 4096 --disk 20 --vcpus 4 "Normal VNF"
openstack flavor create --ram 8192 --disk 20 --vcpus 8 "Premium VNF"

yum install -y wget
wget http://www.sdx4u.net/downloads/trusty-server-cloudimg-amd64-disk1.img
wget http://www.sdx4u.net/downloads/xenial-server-cloudimg-amd64-disk1.img

openstack image create "Ubuntu14.04" --file trusty-server-cloudimg-amd64-disk1.img --disk-format qcow2 --container-format bare --public
openstack image create "Ubuntu16.04" --file xenial-server-cloudimg-amd64-disk1.img --disk-format qcow2 --container-format bare --public

cp httpd/conf.d/15-horizon_vhost.conf /etc/httpd/conf.d/15-horizon_vhost.conf
cp neutron/dhcp_agent.ini /etc/neutron/dhcp_agent.ini
cp sysconfig/selinux /etc/sysconfig/selinux
