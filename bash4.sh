#!/bin/bash

while true; do
    read a op b

    if [[ "$a" == "exit" && -z "$op" && -z "$b" ]]; then
        echo "bye"
        break
    fi

    # Проверка на три аргумента
    if [[ -z "$a" || -z "$op" || -z "$b" ]]; then
        echo "error"
        exit 1
    fi

    # Проверка, что a и b — целые числа
    if ! [[ "$a" =~ ^-?[0-9]+$ && "$b" =~ ^-?[0-9]+$ ]]; then
        echo "error"
        exit 1
    fi

    case "$op" in
        "+")  echo $((a + b)) ;;
        "-")  echo $((a - b)) ;;
        "*")  echo $((a * b)) ;;
        "/")  
            if [[ "$b" -eq 0 ]]; then
                echo "error"
                exit 1
            fi
            echo $((a / b))
            ;;
        "%")
            if [[ "$b" -eq 0 ]]; then
                echo "error"
                exit 1
            fi
            echo $((a % b))
            ;;
        "**") echo $((a ** b)) ;;
        *)    echo "error"; exit 1 ;;
    esac
done
