#!/bin/sh

num_array=()

cat numbers.txt | while read line; do
	for num in $line; do
		echo $num
		num_array+=($num)
	done

	echo ${num_array[@]}

	sorted_array=()

	array_length=${#num_array[@]}
	max_iteration=$((array_length - 1))

	sorted="False"

	while [[ "$sorted" == "False" ]]; do

		sorted="True"

		for ((i = 0 ; i < $max_iteration ; i++)); do
			j=$((i+1))
			first_num=${num_array[i]}
			second_num=${num_array[j]}

			echo $first_num
			echo $second_num

			if [[ $first_num -lt $second_num ]]; then
				num_array[i]=$second_num
				num_array[j]=$first_num
				sorted="False"
			fi

		echo ${num_array[@]}
		done

		echo "hello"
		echo ${num_array[@]}

	done

done

