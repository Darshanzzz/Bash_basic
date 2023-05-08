#!/bin/bash

#This script displays various information to the screen

# Display Hello ( '' displays exactly what is inside)
echo 'Hello'

#Assign a value to variable
WORD='script'
#Display the var ("" allows for variables to be used)
echo "$WORD"
echo '$WORD'
echo "This is a shell $WORD"

#Display the contents of the var using an alternative syntax
#Allows the appending of text to the variable

echo "This is a shell ${WORD}"
echo "This is a ${WORD}ing language"

#Combine two variables
ENDING='ed'
echo "This is ${WORD}${ENDING}"


