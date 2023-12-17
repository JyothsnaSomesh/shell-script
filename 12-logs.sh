#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE (){
if [ $1 -ne 0 ]
then
   echo "ERROR: $2....$R FAILed $N"
   exit 1
else
   echo "$2.....$G SUCCESS $N"
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