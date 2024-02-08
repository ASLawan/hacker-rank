#!/usr/bin/env bash
# sorts given data in descending order based on second column

# sort -  sort command 
# -k2 - second column
# -n - sort numerical
# -t - separator
# -r - reverse
read -rp "Enter file to sort: " FILE

# sorts in desc order
sort -k2 -n -t$'\t' -r < "$FILE"

# sorts in ascending order
# sort -k2 -n -t$'\t' -r < "$FILE"


