#!/bin/bash

# Infinite loop waiting for input
while true; do
    read a b

    # Check for empty input
    if [[ -z "$a" && -z "$b" ]]; then
        echo "bye"
        break
    fi

    # Check that both values are positive integers
    if ! [[ "$a" =~ ^[1-9][0-9]*$ && "$b" =~ ^[1-9][0-9]*$ ]]; then
        echo "Please enter two natural numbers"
        continue
    fi

    # Calculate GCD using Euclidean algorithm
    x=$a
    y=$b
    while [[ "$y" -ne 0 ]]; do
        temp=$y
        y=$((x % y))
        x=$temp
    done

    echo "GCD is $x"
done
