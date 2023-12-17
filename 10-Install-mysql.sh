#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "ERROR :: Please access with root user"
   exit 1
else
   echo "You are root user"
fi

yum install mysqlll -y

if [ $? -ne 0 ]
   echo "ERROR: installing Mysql is FAILURE"
   exit 1
else
   echo "installing mysql is SUCCESS"
 fi

 yum install git -y

if [ $? -ne 0 ]
   echo "ERROR: installing git is FAILURE"
   exit 1
else
   echo "installing git is SUCCESS"
 fi 
