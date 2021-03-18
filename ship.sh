#!/usr/bin/env bash

if [ -z "$1" ]; then
  printf "%s\n" "ship v0.1.0"
  printf "%s\n\n" "Transfer shell scripts with ease"
  printf "%s\n" "Usage: ship <file>"
  exit 1
fi

file_path="$1"
file_name=$(basename "$file_path")
file_name=${file_name/.sh/}
cp "$file_path" "/usr/local/bin/$file_name"

printf "%s\n" "Shipping complete 🛥"