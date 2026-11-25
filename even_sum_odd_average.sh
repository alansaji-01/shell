#!/bin/bash

echo "Enter a number:"
read n

even=0
odd_sum=0
count=0

while [ "$n" -gt 0 ]
do
    digit=$((n % 10))

    if [ $((digit % 2)) -eq 0 ]; then
        even=$((even + digit))
    else
        odd_sum=$((odd_sum + digit))
        count=$((count + 1))
    fi

    n=$((n / 10))
done

echo "Sum of even digits = $even"

if [ "$count" -gt 0 ]; then
    average=$((odd_sum / count))
    echo "Average of odd digits = $average"
else
    echo "No odd digits found"
fi
