#!/bin/bash

# test_me: echoes one string if given no arguments, and another string if given
# any arguments

# Is the number of arguments zero?
if (($#)); then
	# Then we have no arguments:
	echo "This is a TEST"
else
	# Therefore we have at least one argument:
	echo "This is NOT a test"
fi

