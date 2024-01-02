#!/usr/bin/env bash
# script to implement basic arithmetic

read -rp "Enter first number: " num1
read -rp "Enter second number: " num2

if [[ $num1 -lt -100 ]] || [[ $num1 -gt 100 ]];
then
	echo "$num1 is invalid"
	exit 1
fi
if [[ $num2 -lt -100 ]] || [[ $num2 -gt 100 ]];
then
	if [[ ! $num2 -eq "0" ]];
	then
		echo "$num2 is invalid"
		exit 1
	
	fi
fi

echo "$((num1+num2))"
echo "$((num1-num2))"
echo "$((num1*num2))"
echo "$((num1/num2))"
