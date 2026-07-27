#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/home/ec2-user/shell-logs
LOGS_FILE="$LOGS_DIR/$0.log" # home/ec2-user/shell-logs/10-logs.sh.log
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
  echo "Installing nginx -y&>>"
  dnf install nginx -y&>>$LOGS_FILE

  if [ $? -ne 0 ]; then
    echo " Installing nginx &>>$LOGS_FILE"
    exit 1
  else
    echo " Installing nginx -y&>>$LOGS_FILE"
   fi
fi