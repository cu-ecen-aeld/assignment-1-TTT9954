#!/bin/bash

WRITEDIR=$1
SEARCHSTR=$2

if [ $# -lt 2 ]; then
	echo "Please provide a number of arguments adequately"
	echo "$0 <file dir> <search string>"
	exit 1
fi

if [ ! -d "$WRITEDIR" ]; then
	echo "$WRITEDIR does not exist"
	exit 1
fi

# Count all files recursively
num_files=$(find "$WRITEDIR" -type f | wc -l)

# Count all matching lines recursively
num_lines=$(grep -R "$SEARCHSTR" "$WRITEDIR" 2>/dev/null | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_lines"
