#!/bin/bash
# Modified time-signal.sh with more chiming.

# Extract the chiming loop into a function for reuse throughout the script:
function chime {
	for ((i = 0; i < $1; i++ )); do
		echo -e "\a"
		sleep 1
	done
}

# Store the hour and minute:
hours=$(date +%I)
minutes=$(date +%M)

# Chime the hours and then wait three seconds:
chime $hours
sleep 3
# Chime the minutes depending on which quarter of the hour we are in:
chime $((minutes / 15))
