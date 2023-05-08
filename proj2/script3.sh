#!/bin/bash

### Demonstratoe the use of shift and while loops ####


# Display first three paramters

echo "parameter 1: $1"
echo "parameter 2: $2"
echo "parameter 3: $3"
echo 
# Loop through all the postional parameter.

while [[ "$#" > 0 ]]
do
  echo "Number of parameters: $# "
  echo "parameter 1: $1"
  echo "parameter 2: $2"
  echo "parameter 3: $3"
  echo 
  shift
done

