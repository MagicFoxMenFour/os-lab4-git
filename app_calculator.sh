#!/usr/bin/env bash
if [[ $# != 2 ]]; then
    echo "Ошибка: нужны два целых числа" >&2
    exit 1
fi
for n in "$@"; do
    if ! [[ $n =~ ^-?(0|[1-9][0-9]*)$ ]]; then
        echo "Ошибка: введите целое число без ведущих нулей" >&2
        exit 1
    fi
done
echo "Сумма: $(($1 * $2))"
