#!/bin/sh

rm notunique1.txt
touch notunique1.txt

rm notunique2.txt
touch notunique2.txt


cat test1.txt | while read num; do

	unique="True"

	cat test2.txt | while read num2; do

		echo "$num and $num2"

		awk

		if [[ "$num" == "$num2" ]]; then
			echo "$num is not unique"
			echo "$num" >> notunique1.txt
			break
		fi

	done

done

cat test1.txt | while read num; do
	match=`echo grep $num notunique1.txt`
	if [[ "$match" == "" ]]; then
		echo "$num is unique"
	fi
done

