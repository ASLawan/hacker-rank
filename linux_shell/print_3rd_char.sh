#!/usr/bin/env bash
# script that receives textfile, count number of lines
# prints third character on line

if [[ $# -ne 1 ]];
then
	echo "Usage: $0 <filename>"
	exit 1
fi

FILE="$1"
LINES=$(wc -l < "$FILE")

if [[ $LINES -ge 1 ]] && [[ $LINES -le 100 ]];
then
	while IFS= read -r line
	do
		if [[ ${#line} -ge 3 ]];
		then
			echo "${line:2:3}"
		fi
	done < "$FILE"
else
	echo "$0 should have at least 1 and at most 100 lines"
fi
