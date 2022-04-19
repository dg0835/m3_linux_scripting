#!/bin/sh

echo "Enter a file name"
read filename

output=`find . -name "${filename}"`

if [[ "$output" == "" ]]; then
	touch $filename
	exit 0
else
	echo "Error - File already exists"
	exit 1
fi


