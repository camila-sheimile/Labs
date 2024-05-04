#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]
then
	echo "Usage: $0 <directory> <file_extension>"
	exit 1
fi

directory="$1"
file_extension=.$2"

# Count files with the specified extention in the directory
count=$(fid "$directory" -type f -name "*file_extension" | wc -1)

echo "Number of .$2 files in $directory: $count"
