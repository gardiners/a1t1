#!/bin/bash

# test_me: echoes one string if given no arguments, and another string if given
# any arguments

# Is the set of arguments an empty string?
if [ -z "$*" ]; then
	# If so:
	echo "This is NOT a test"
else
	# Otherwise:
	echo "This is a TEST"
fi

