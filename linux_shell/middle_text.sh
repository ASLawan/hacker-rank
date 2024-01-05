#!/usr/bin/env bash
# script that prints lines 12 to 22 of given text file

read -rp "Enter file to read from: " FILE

head -n 22 "$FILE" | tail -n 11
