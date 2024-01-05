#!/usr/bin/env bash
# script to print characters from second to seventh position

while read -r line;
do
	echo "$line" | cut -c 2-7
done
