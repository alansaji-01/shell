7. Find the sum of even digits and average of odd digits of a given number

#!/bin/bash

echo "Enter a number:"
read num

even_sum=0
odd_sum=0
count=0

while [ $num -gt 0 ]
do
    digit=$((num % 10))

    if [ $((digit % 2)) -eq 0 ]
    then
        even_sum=$((even_sum + digit))
    else
        odd_sum=$((odd_sum + digit))
        count=$((count + 1))
    fi

    num=$((num / 10))
done

echo "Sum of even digits = $even_sum"

if [ $count -gt 0 ]
then
    avg=$(awk "BEGIN {printf \"%.2f\", $odd_sum/$count}")
    echo "Average of odd digits = $avg"
else
    echo "No odd digits found."
fi