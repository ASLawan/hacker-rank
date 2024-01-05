#!/usr/bin/env bash
# script that deletes all intances of lowercase letters

read -rp "Enter file to work with: " FILE

tr -d '[:lower:]' < "$FILE"
