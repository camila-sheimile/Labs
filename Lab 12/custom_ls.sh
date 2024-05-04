#!/bin/bash

# Check if directory is provided as argument
if [ -z "$1" ]
then 
	echo "Usage: $0 <directory>"
	exit 1
fi

directory="$1"

# Loop through each entry in the directory
for entry in "$directory"/*
do
	# Print file/directory name
	echo -n "Name: $(basename "entry")"

	# Check if emtry is a directory or a file
	if [ -d "$entry" ]
	then
		echo " (directory)"
	else
		echo " (file)"
	fi

	# Print permissions
	echo "Permissions: $stat -c '%A' "$entry")"
done
