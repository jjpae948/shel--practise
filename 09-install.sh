#!/bin/bash

USERID=$(id -u)

# Check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

# echo "Iam continuing..."
dnf installed nginx

if [ $? -eq 0 ]; then
    echo "nginx is already installed...SKIPPING"
else
  echo "Installing nginx"
  dnf install nginx -y

  if [ $? -ne 0 ]; then
    echo " Installing nginx is... FAILED"
    exit 1
  else
    echo " Installing nginx is...SUCCESS"
   fi
fi