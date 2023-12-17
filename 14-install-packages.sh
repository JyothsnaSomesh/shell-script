#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"


if [ $ID -ne 0 ]
then
   echo -e "$R ERROR :: Please access with root user $N"
   exit 1 # you can give other than zero
else
   echo "You are root user"
fi

echo "All arguments passed: $@"