#!/bin/bash

# Подсказка по использованию
if [[ "$1" == "--help" ]]; then
    echo "Использование: $0 <число студентов>"
    echo "Пример: $0 3"
    exit 0
fi

# Проверка, что введено неотрицательное целое число
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Ошибка: введите неотрицательное целое число"
    exit 1
fi

var1=$1

# Обработка значения через case
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
