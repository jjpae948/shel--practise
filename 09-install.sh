#!/bin/bash

USERID=$(id -u)

#Check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

 # echo "iam continuing.."

 echo "Installing mySQL "
 dnf install mysql-server -y

 echo "Iam continuing..."

 echo "Iam still continuing.."