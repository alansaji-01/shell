#!/bin/bash

echo "Enter number of students:"
read n

> student

for ((i=1; i<=n; i++))
do
    echo "Enter student number:"
    read no

    echo "Enter student name:"
    read name

    echo "Enter student mark:"
    read mark

    echo "$no $name $mark" >> student
done

echo "Student details:"
cat student

echo "Total number of students:"
wc -l < student

echo "Students sorted by mark:"
sort -k3,3n student

echo "Student with highest mark:"
sort -k3,3n student | tail -n 1
