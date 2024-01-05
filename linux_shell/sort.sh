#!/usr/bin/env bash
# sorts given text in lexicographical order
# usr sort command with -d flag

read -rp "Enter file to sort: " FILE

sort -d < "$FILE"

