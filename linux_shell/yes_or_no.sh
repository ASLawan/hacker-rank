#!/usr/bin/env bash
# script to print yes or no 

read -rp "Enter a character: " char

if [[ $char == "y" ]] || [[ $char == "Y" ]];
then
	echo "YES"
elif [[ $char == "n" ]] || [[ $char == "N" ]];
then
	echo "NO"
fi
