5. Find the cube of the first n natural numbers

#!/bin/bash

echo "Enter the value of n:"
read n

echo "Cubes of first $n natural numbers:"

for ((i=1; i<=n; i++))
do
    cube=$((i*i*i))

    echo "Cube of $i = $cube"
done