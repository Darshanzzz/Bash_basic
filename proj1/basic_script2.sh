#!/bin/bash

#Display the UID and username of the user executing this script
#Display if the user is root user or not

#Dsiplay UID

echo "Your UID is ${UID}" #UID is a preset variable

#Display the username
USER_NAME=$(id -un)
echo "Your username is $USER_NAME "

#Display is the user is a root or not

if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root'
else 
  echo 'You are not root'
fi
