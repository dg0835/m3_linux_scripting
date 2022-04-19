#!/bin/sh

cd ~

ls

if [[ ! -d "FixGen/logs" ]]; then
	echo "hi"

	mkdir FixGen
	cd FixGen
	mkdir logs
	cd ~
	mv fixGenerator.sh FixGen/logs

fi

cd FixGen/logs

./fixGenerator.sh &

number_of_lines=`ls -ltr | grep 'fixlog.*' | wc -l`

echo "$number_of_lines lines"

lines=`ls -ltr` | grep 'fixlog.*'

number_to_compress=$((number_of_lines - 3))

for ((i = 0 ; i < $number_to_compress ; i++)); do
	
done

