#!/usr/bin/env bash
# print the second and seventh character on each line

while read -r line;
do
	second_char=${line:1:1}
	seventh_char=${line:6:1}
	echo -n "$second_char"
	echo "$seventh_char"
	#echo -n "${line}" | cut -c2
	#echo -n "${line}" | cut -c7
done
