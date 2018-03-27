#!/bin/bash

yum install -y centos-release-openstack-ocata
yum update

yum install -y openstack-packstack

setenforce 0

systemctl disable firewalld
systemctl stop firewalld

systemctl disable NetworkManager
systemctl stop NetworkManager

systemctl enable network
systemctl start network

packstack --answer-file=answer.txt

cd ~
ssh-keygen -t rsa -f cloud.key
