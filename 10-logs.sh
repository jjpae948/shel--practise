#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/home/ec2-user/shell-logs
LOGS_FILE="$LOGS_DIR/$0.log" # home/ec2-user/shell-logs/10-logs.sh.log

# Check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

# first arg -> what are u trying to install
# second arg -> exit cde
VALIDATE()
    if [ $2 -ne 0 ]; then
       echo "Installing $1 is ... FAILED" |tee -a LOGS_FILE
       exit 1
    else
        echo "Instaling $1 is ...SUCCESS"
    fi


  #echo "I am continuing..."       
  dnf  list installed mysql &>>$LOGS_FILE

  if [ $? -eq 0 ]; then
     echo " MySQL is alredy installed ... SKIPPING" 
  else
      echo"Installing MySQL"
      echo " Installing mysql -y &>> $LOGS_FILE"
   VALIDATE MySQL $?
fi