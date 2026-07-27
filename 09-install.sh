#!/bin/bash

USERID=$(id -u)

#Check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

 # echo "iam continuing.."

 echo "Installing mySQL "
 dnf install mysqL -Y"

if [ $? -eq 0 ]; then
    echo " installing mySQL is... failed"
    exit1
else
    echo " Installing mySQL is...success"
fi