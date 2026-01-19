#!/bin/bash

WRITEFILE=$1
WRITESTR=$2

if [ -z "$WRITEFILE" ] || [ -z "$WRITESTR" ]; then
    echo "Usage: $0 <write_file> <write_string>"
    exit 1
fi
# Create parent directory
mkdir -p "$(dirname "$WRITEFILE")" || { echo "Create $WRITEFILE unsuccessfully"; exit 1; }

# Write string to file
echo "$WRITESTR" > "$WRITEFILE"
