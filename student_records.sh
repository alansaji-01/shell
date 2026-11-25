#!/bin/bash

echo "Enter number of students:"
read n

if [[ ! "$n" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Enter a positive number of students."
    exit 1
fi

# Store each record as: number<TAB>name<TAB>mark
> student

for ((i=1; i<=n; i++))
do
    echo "Enter student number:"
    read no

    echo "Enter student name:"
    read name

    echo "Enter student mark:"
    read mark

    if [[ ! "$mark" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
        echo "Error: Enter a valid non-negative mark."
        exit 1
    fi

    printf "%s\t%s\t%s\n" "$no" "$name" "$mark" >> student
done

echo "Student details:"
cat student

echo "Total number of students:"
wc -l < student

echo "Students sorted by mark:"
sort -t $'\t' -k3,3n student

echo "Student(s) with highest mark:"
highest=$(sort -t $'\t' -k3,3nr student | head -n 1 | cut -f3)
awk -F '\t' -v max="$highest" '$3 == max' student
