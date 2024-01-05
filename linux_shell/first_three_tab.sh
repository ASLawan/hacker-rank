#!/usr/bin/env bash
# print first three tab separated values

while read -r line;
do
	echo "$line" | cut -f 1-3
done
