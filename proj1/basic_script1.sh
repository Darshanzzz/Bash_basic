#!/bin/bash

#Display the UID and username of the user executing this script
echo "your UID is ${UID}"

#Display UID
UID_TO_TEST_FOR='1000'

if [[ "$UID" -ne "$UID_TO_TEST_FOR" ]]
then
  echo "Your id is not $UID_TO_TEST_FOR "
  exit 1 #value of 1 given to exit statment
fi
#Display the username
USER_NAME=$(id -un)


#Test if the command succeeded
if [[ "$?" -ne 0 ]] #? calls the last exit statement value
then
  echo 'The id command did not execute susccefully'
  exit 1
fi
echo "Your username is $USER_NAME "

# You can use a string test conditional
USER_NAME_TO_TEST_FOR='ds'
if [[ "$USER_NAME" = "$USER_NAME_TO_TEST_FOR" ]]
then 
  echo "Your username mathes $USER_NAME_TO_TEST_FOR"
fi
