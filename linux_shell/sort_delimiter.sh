#!/usr/bin/env bash
# sorts given data in descending order based in second column
# use given delimiter

read -rp "Enter the file to sort from: " FILE

sort -k2 -n -t$'|' -r < "$FILE"
