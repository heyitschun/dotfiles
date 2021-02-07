#!/bin/bash

PUBLIC_IP=`wget http://ipecho.net/plain -O - -q ; echo`

if [ $PUBLIC_IP = "163.158.199.129" ]
then
    echo " $PUBLIC_IP"
else
    echo " $PUBLIC_IP"
fi


