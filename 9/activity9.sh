#!/bin/sh

echo "Enter a file name"
read filename

output=`find . -name "${filename}"`

if [[ "$output" == "" ]]; then
	touch $filename
else
	echo "Error - File already exists"
fi


