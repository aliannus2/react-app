#!/bin/bash
input="./file"
while IFS= read -r line
do
  if [[ $line == *"project:"* ]]; then
  printf '%s\n' "${line//*project: /}"
fi
done < "$input"