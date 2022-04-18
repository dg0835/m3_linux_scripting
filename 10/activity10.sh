#!/bin/sh

echo "Enter a filename to add random numbers to"
read filename

if test -f "$filename"; then
	echo "Error - This file already exists."
else
	touch $filename
fi


echo "Enter the number of lines to write"
read lines_number


for ((i = 0; i < $lines_number ; i++)); do
	random_number=$(($RANDOM))
	echo $random_number >> $filename 
done



