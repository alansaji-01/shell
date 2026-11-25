#!/bin/bash

echo "Enter a number:"
read number

# Accept only whole numbers, including negative numbers.
if [[ ! "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter a valid integer."
    exit 1
fi

# Remove the minus sign; digits are the same for negative numbers.
number=${number#-}

even=0
odd_sum=0
odd_count=0

# Process each digit as text, so 0 and numbers with leading zeros work.
for ((i=0; i<${#number}; i++))
do
    digit=${number:i:1}

    if (( digit % 2 == 0 )); then
        even=$((even + digit))
    else
        odd_sum=$((odd_sum + digit))
        odd_count=$((odd_count + 1))
    fi
done

echo "Sum of even digits = $even"

if [ "$odd_count" -gt 0 ]; then
    average=$(awk -v sum="$odd_sum" -v count="$odd_count" 'BEGIN { printf "%.2f", sum/count }')
    echo "Average of odd digits = $average"
else
    echo "No odd digits found"
fi
