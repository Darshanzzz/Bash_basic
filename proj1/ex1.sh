#!/bin/bash

###Create users####

# Check if script is executed by root user. If yes cont, else end

if [[ "$UID" != "0" ]]
then
  echo "You are not a root user!"
  echo "You have to be  root to execute this script"
  exit 1
fi

# Enter username, full name and pw

read -p "Enter username: " USER_NAME

read -p "Enter full name: " COMMENT

read -p "Enter password: " PASS


# Creates a new user with pw

useradd -c "$COMMENT" -m $USER_NAME
if [[ "$?" != 0 ]]
then
  echo "Account creation failed!"
  exit 1
fi

passwd $USER_NAME

if [[ "$?" != 0 ]]
then
  echo "Account creation failed!"
  exit 1
fi

passwd -e $USER_NAME
if [[ "$?" != 0 ]]
then
  echo "Account creation failed!"
  exit 1
fi

# Display if account creation failed. If so return exit status of 1


#Display username, pw and host where acc was created

echo "Your username is $USER_NAME"
echo "Your password is $PASS"
echo "The hostname is $HOSTNAME"

