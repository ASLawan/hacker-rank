#!/usr/bin/env bash
# Bash script to compute average of given numbers

read -rp "Enter nunber of numbers: " num_of_nums
if [[ $num_of_nums -lt 1 ]] || [[ $num_of_nums -gt 500 ]];
then
	echo "Invalid number"
	exit 1
fi
sum="0"

for ((i=0; i<num_of_nums; i++));
do
	read -rp "Enter number to add: " num
	if [[ $num -ge -10000 ]] && [[ $num -le 10000 ]];
	then
		sum=$(echo "$sum + $num" | bc -l)
	fi
done

average=$(echo "$sum / $num_of_nums" | bc -l)

printf "%.3f\n" "$average"
