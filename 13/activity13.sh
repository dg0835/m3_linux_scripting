#!/bin/sh

rm notunique1.txt
touch notunique1.txt

rm notunique2.txt
touch notunique2.txt

cat test1.txt | while read num; do

	cat test2.txt | while read num2; do

		echo "$num and $num2"

		if [[ "$num" == "$num2" ]]; then
			echo "$num is not unique"
			echo "$num" >> notunique1.txt
		fi

	done

done

file1_array=(`cat "test1.txt"`)
file2_array=(`cat "test2.txt"`)

non_unique_numbers=(`cat "notunique1.txt"`)

echo "Only in file1: "

file1_length=`echo ${#file1_array[@]}`
file2_length=`echo ${#file2_array[@]}`
non_unique_numbers_length=`echo ${#non_unique_numbers[@]}`

for ((i = 0 ; i < $non_unique_numbers_length ; i++)); do

	for ((j = 0 ; j < $file1_length ; j++)); do

		if [[ file1_array[$j] -eq non_unique_numbers[$i] ]]; then
			unset file1_array[$j]
		fi
	done

	for ((j = 0 ; j < $file2_length ; j++)); do
		if [[ file2_array[$j] -eq non_unique_numbers[$i] ]]; then
			unset file2_array[$j]
		fi
	done

echo "Only in file 1:"

for i in "${file1_array[@]}"; do
	echo $i
done

echo "Only in file 2:"

for i in "${file2_array[@]}"; do
	echo $i
done

	
done
