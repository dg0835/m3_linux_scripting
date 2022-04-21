#!/bin/sh

cd ~

if [[ ! -d "FixGen/logs" ]]; then
	echo "hi"

	mkdir FixGen
	cd FixGen
	mkdir logs
	cd ~
	mv fixGenerator.sh FixGen/logs

fi

cd FixGen/logs

#./fixGenerator.sh &

number_of_lines=`ls -ltr | grep 'fixlog.*' | wc -l`

echo "$number_of_lines lines"

number_to_compress=$((number_of_lines - 3))

files_to_compress=`ls -ltr ~/FixGen/logs/ | grep fixlog | head -n $number_to_compress | awk '{print $9}'`

echo "The files that will be compressed are below:"
echo $files_to_compress

tar -cvf log_tarball.tar $files_to_compress
