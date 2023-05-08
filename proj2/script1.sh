#!/bin/bash

# This script generates a list of random passwords

# A random number as a password

PASSWORD="$RANDOM"
echo "$PASSWORD"


# Three random numbers together
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

# Use the current date/time as the basis for the password

PASSWORD=$(date +%s)
echo "$PASSWORD"

# Use sha256sum and first 10 characters

PASSWORD=$(date +%s | sha256sum | head -c10)
echo "$PASSWORD"

# Even better password

PASSWORD=$(date +%s${RANDOM}${RANDOM} | sha256sum | head -c16 )
echo "complex password: $PASSWORD"

# Append special character

SPECIAL=$(echo '!@#$%^&*()_+-=' | fold -b1 | shuf | head -c1 ) 
PASSWORD=$(date +%s${RANDOM}${RANDOM} | sha256sum | head -c16 )$SPECIAL
echo "complex password: $PASSWORD"



