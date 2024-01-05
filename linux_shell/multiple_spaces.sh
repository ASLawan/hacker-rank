#!/usr/bin/env bash
# script that replaces multiple spaces with a single space
# use -s flag of the rr command

read -rp "Enter file to work with: " FILE

tr -s ' ' < "$FILE"
