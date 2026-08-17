#!/bin/bash

a=$1
b=$2
choice=$3

echo "Calculator Menu:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

case $choice in
    1)
        echo "Result: $((a + b))"
        ;;
    2)
        echo "Result: $((a - b))"
        ;;
    3)
        echo "Result: $((a * b))"
        ;;
    4)
        if [ "$b" -eq 0 ]; then
            echo "Error: Cannot divide by zero"
        else
            echo "Result: $((a / b))"
        fi
        ;;
    *)
        echo "Invalid choice. Choose between 1 and 4."
        ;;
esac