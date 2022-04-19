#!/bin/sh

rm matches.txt
touch matches.txt

echo "Enter the first filename"
read file1

echo "Enter the second filename"
read file2

cat $file1 | while read line; do

	for word in $line; do
		match=`grep $word $file2`
		if [[ "$match" != "" ]]; then
			echo "Match found: ${word}"
			echo "$word" >> matches.txt
		fi
	done


done

echo "matches.txt output below"
matches_file=`cat matches.txt`
echo $matches_file

if [[ "$matches_file" == "" ]]; then
	echo "No matches found"
fi

exit 0
