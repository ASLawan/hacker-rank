#!/usr/bin/env bash
# prints first four characters of text

while read -r line;
do
	echo "$line" | cut -c 1-4
done
