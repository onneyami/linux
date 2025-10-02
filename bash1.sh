#!/bin/bash

# Usage hint
if [[ "$1" == "--help" ]]; then
    echo "Usage: $0 <number of students>"
    echo "Example: $0 3"
    exit 0
fi

# Check that a non-negative integer is entered
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: please enter a non-negative integer"
    exit 1
fi

var1=$1

# Process the value using case
case "$var1" in
  0)
    echo "No students"
    ;;
  1)
    echo "1 student"
    ;;
  [2-4])
    echo "$var1 students"
    ;;
  *)
    echo "A lot of students"
    ;;
esac
