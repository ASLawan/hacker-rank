#!/usr/bin/env bash
# script to print numbers from 1 to 50

i="0"

while [[ $i -lt 50 ]];
do
	echo "$((i+1))"
	i=$((i+1))
done

