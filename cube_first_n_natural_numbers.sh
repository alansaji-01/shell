#!/bin/bash

# QUESTION:
# Write a shell script to accept a positive integer n from the user
# and display the cube of the first n natural numbers.
# (For example, if n = 3, display the cubes of 1, 2 and 3.)

echo "Enter the value of n:"
read n

for ((i=1; i<=n; i++))
do
    cube=$((i * i * i))
    echo "Cube of $i = $cube"
done
