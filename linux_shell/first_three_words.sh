#!/usr/bin/env bash
# script that prints first three words from a sentence

while read -r line;
do
	echo "$line" | cut -d " " -f -3
done
