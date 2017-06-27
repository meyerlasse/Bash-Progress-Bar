#!/bin/bash

# Create progess bar
# $1 = Current status
# $2 = Max status
_progress_bar () {
	PROGRESS=$(( 100 * $1 / $2 ))
	LENGTH=$(( $(tput cols) / 2 ))
	DONE=$(( LENGTH * $1 / $2 ))
	LEFT=$(( LENGTH - DONE ))
	# Build progressbar string lengths
	DONE=$(printf "%${DONE}s")
	LEFT=$(printf "%${LEFT}s")
	# Print progess bar
	printf "\r%i/%i: [${DONE// /#}${LEFT// /-}] ${PROGRESS}%%" "$1" "$2"
}