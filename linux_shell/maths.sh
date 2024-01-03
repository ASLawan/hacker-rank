#!/usr/bin/env bash
# script to evaluate maths expressions

read -rp "Enter a mathematical expression: " expression

result=$(bc <<< "$expression")

res=$(printf "%.2f\n" "$result")

echo "$res"
