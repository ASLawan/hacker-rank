#!/usr/bin/env bash
# replaces '()' with '[]'
# about tr command
# tr 'a-z' 'A-Z' converts lower to uppercase
# tr -d ' '  deletes specified xter
# tr -s " "  replaces occurrences with one
# tr -c "a-z" complement -  print non-lowercase
# tr -d '\t\n' deletes tabs and newlines
 
read -rp "Enter file to work with: " FILE


tr '()' '[]' < "$FILE"
