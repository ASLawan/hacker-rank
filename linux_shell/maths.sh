#!/usr/bin/env bash
# script to evaluate maths expressions

read -rp "Enter a mathematical expression: " expression

# result=$(bc <<< "$expression")

result=$(echo "scale=10; $expression" | bc -l)

res=$(printf "%.3f" $result)

echo "$res"
