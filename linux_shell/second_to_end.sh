#!/usr/bin/env bash
# script that prints from second to the last column
# tab separated values

while read -r line;
do
	echo "$line" | cut -f 2-
done
