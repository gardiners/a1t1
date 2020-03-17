#!/bin/bash

# newest: given a list of filenames as arguments, returns the name of the
# newest file.
# S Gardiner 
# 2020-03-17
#
# Usage: ./newest.sh [FILE]...

if [ -z "$*" ]; then
	echo "Usage: ./newest.sh [FILE]..."
	exit 1
fi

sorted=($(ls -t $*))
echo ${sorted[0]}
