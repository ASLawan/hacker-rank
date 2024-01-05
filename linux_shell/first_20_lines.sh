#!/usr/bin/env bash
# script that prints first 20 lines

read -rp "Enter file to read from: " FILE

cat < "$FILE" | head -n 20
