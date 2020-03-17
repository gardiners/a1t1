#!/bin/bash

# newer: given a list of filenames as arguments, returns the name of the
# newest file.

# If the arguments are empty, print usage help text and quit.
if [ -z "$*" ]; then
	echo "Usage: ./newer.sh [FILE]..."
	exit 1
fi

# Sort the argument filenames by time, and store as a bash array.
sorted=($(ls -t $*))
# Return the first element in the array (ie the newest file).
echo ${sorted[0]}

