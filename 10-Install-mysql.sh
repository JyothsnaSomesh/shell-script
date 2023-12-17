#!/bin/bash

ID=$(ID -u)

if [ $ID -ne 0 ]
then
   echo "ERROR :: Please access with root user"
else
   echo "You are root user"
fi