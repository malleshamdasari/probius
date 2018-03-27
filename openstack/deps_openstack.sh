#!/bin/bash

# update repo
yum update

# install trace-cmd
yum install -y trace-cmd

# instsall statsmodels
yum install -y python-pip
pip install -U statsmodels
