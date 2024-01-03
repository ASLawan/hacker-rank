#!/usr/bin/env bash
# script that checks if a triangle is a 
# SCALENE, ISOSCELES or EQUILATERAL

read -rp "Enter first side: " x
read -rp "Enter second side: " y
read -rp "Enter third side: " z

if [[ $x -lt 1 ]] || [[ $x -gt 1000 ]];
then
	echo "$x is invalid"
fi
if [[ $y -lt 1 ]] || [[ $y -gt 1000 ]];
then
	echo "$y is invalid"
fi
if [[ $z -lt 1 ]] || [[ $z -gt 1000 ]];
then
	echo "$z is invalid"
fi
if [[ $((x+y)) -gt $z ]] || [[ $((x+z)) -gt $y ]] || [[ $((y+z)) -gt $x ]];
then
	echo "Sum of two sides must be greater than the third side"
fi
if [[ $x -eq $y  ]] && [[ $x -eq $z ]];
then
	echo "EQUILATERAL"
elif [[ $x -eq $y ]] || [[ $x -eq $z ]] || [[ $y -eq $z ]];
then
	echo "ISOSCELES"
else
	echo "SCALENE"
fi

	
