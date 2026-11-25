8. Create a student file, count students, sort by marks and display the highest scorer


#!/bin/bash

echo "Enter the number of students:"
read n

> student

for ((i=1; i<=n; i++))
do
    echo "Enter student number, name and mark:"
    read no name mark

    echo "$no $name $mark" >> student
done

echo "Student Details:"
cat student

echo "Total number of students:"
wc -l < student

echo "Students sorted based on marks:"
sort -k3,3n student

echo "Student who got the highest mark:"
sort -k3,3nr student | head -n 1