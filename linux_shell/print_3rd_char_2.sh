#!/usr/bin/env bash
# script that receives textfile, count number of lines
# prints third character on line

# ask user for file
read -rp "Enter file to read from: " FILE

# get number of lines in the file
LINES=$(cat "$FILE" | wc -l)

# check number of lines 
if [[ $LINES -ge 1 ]] && [[ $LINES -le 100 ]];
then
	while IFS= read -r line #read each line from file
	do
		if [[ ${#line} -ge 3 ]]; # check length of each line
		then
			echo "${line:2:1}" # print third character in line
		fi
	done < "$FILE"
else
	echo "$0 should have at least 1 and at most 100 lines"
	exit 1
fi
