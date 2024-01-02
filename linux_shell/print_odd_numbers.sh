#!/usr/bin/env bash
# script that prints odd numbers using for loop

for i in {1..99};
do
	if [[ $((i % 2)) -eq 1 ]]
	then
		echo "$i"
	fi
done
