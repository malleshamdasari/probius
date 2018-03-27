#!/bin/bash

plat=`uname -a | grep Ubuntu | wc -l`

if [ $plat == "0" ];
then
	rpm -qa | grep psutil
else
	apt list 2> /dev/null | grep installed | grep psutil
fi
