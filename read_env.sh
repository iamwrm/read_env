#!/bin/bash

# Check if .env file exists
if [ ! -f "$1" ]; then
  echo "Error: .env file $1 not found" >&2
  exit 1
fi

# Read the variable from .env file
var=$(grep -E "^$2=" $1 | cut -d= -f2-)

# Print variable to stdout or error if not found 
if [ -z "$var" ]; then
  echo "Error: Variable $2 not found in $1" >&2
  exit 1
else
  echo "$var"
fi