#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started executing at $TIMESTAMP" &>>$LOGFILE

VALIDATE (){
   if [ $1 -ne 0 ]
   then
      echo -e "$2... $R FAILED $N"
   else
      echo -e "$2... $G SUCCESS $N"
   fi
   }


if [ $ID -ne 0 ]
then
   echo -e "$R ERROR :: Please access with root user $N"
   exit 1 # you can give other than zero
else
   echo "You are root user"
fi

# echo "All arguments passed: $@"
# git mysql postfix net-tools
# package=git for first time

for package in $ $0
do
   yum list installed $package &>>$LOGFILE
   if [ $? -ne 0 ]
   then 
      yum install $package -y &>>$LOGFILE
   VALIDATE $? "Installation of $package"
      else
         echo -e "$package is already installed...$Y SKIPPING $N"
done