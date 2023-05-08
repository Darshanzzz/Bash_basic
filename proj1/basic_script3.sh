#!/bin/bash

# This script creates an account on the local system
# You will be prompted for the account name and password

# ASk for the username
read -p 'Enter the username to create: ' USER_NAME

# ASk for the real name
read -p 'Enter the real name: ' COMMENT

# Ask for the password
read -p 'Enter the password: ' PASS

# Create the user
useradd -c "$COMMENT" -m $USER_NAME


# Set the password for the user
passwd $USER_NAME 

# Force password change on the first login
passwd -e $USER_NAME


