#!/usr/bin/env bash
# script that sorts integers in ascending order of magnitude

read -rp "Enter file to sort: " FILE

sort -n -r < "$FILE"
