#!/bin/bash

# Бесконечный цикл ожидания ввода
while true; do
    read a b

    # Проверка на пустую строку
    if [[ -z "$a" && -z "$b" ]]; then
        echo "bye"
        break
    fi

    # Проверка, что оба значения — положительные целые числа
    if ! [[ "$a" =~ ^[1-9][0-9]*$ && "$b" =~ ^[1-9][0-9]*$ ]]; then
        echo "Введите два натуральных числа"
        continue
    fi

    # Вычисление НОД с помощью алгоритма Евклида
    x=$a
    y=$b
    while [[ "$y" -ne 0 ]]; do
        temp=$y
        y=$((x % y))
        x=$temp
    done

    echo "GCD is $x"
done
