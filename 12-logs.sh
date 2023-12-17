#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE (){
if [ $1 -ne 0 ]
then
   echo "ERROR: $2....FAILURE"
   exit 1
else
   echo "$2.....SUCCESS"
 fi
}

if [ $ID -ne 0 ]
then
   echo "ERROR :: Please access with root user"
   exit 1
else
   echo "You are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing Mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"