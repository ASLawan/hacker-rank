#!/usr/bin/env bash
# print the second and seventh character on each line

while read -r line;
do
	echo -n "${line}" | cut -c 2,7
done
