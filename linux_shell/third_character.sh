#!/usr/bin/env bash
# prints third character from each line

while read -r line;
do
	echo "${line}" | cut -c3
done
