#!/bin/bash

####This script generates a random password for each user specified on the command line######

# Display what the user typed on the command line

echo "You executed this command: $0 "

# Display the path and filename of the script 

echo "You used $(dirname $0 ) as the path to the  $(basename $0 )"

# Tell them how many arguments they passed in.
#( Inside the script they are paramenters, outside they are arguments.)

NUMBER_OF_PARAMETERS="$#" 
echo " You supplied $NUMBER_OF_PARAMETERS argument(s) on the command line"

# MAke sure they supply atleast one arguement.

if [[ "$NUMBER_OF_PARAMETERS" = "0" ]]
then
  echo "Usage: $0 USER_NAME [USER_NAME]..."
  exit 1
fi 


# Generate and display a password for each parameter 

for USERNAME in "$@"
do
  PASSWORD=$( date +%s${RANDOM} | sha256sum | head -c10 )
  echo "${USERNAME}: $PASSWORD "
done







