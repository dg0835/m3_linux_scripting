#!/bin/sh

current_sum=0
current_product=1
current_max=0
current_min=9999999999
current_average=0
re='^[0-9]+$'

for ((i = 0 ; i < 10 ; i++)); do
	if [[ $i -ge 5 ]]; then
		echo "Enter a number or enter n to stop"
		read input
		if [[ "$input" == "n" ]]; then
			echo "No longer taking numbers"
			break
		else
			echo "Number ${input} accepted"
		fi
	else
		echo "Enter a number"
		read input
		echo "Number ${input} accepted"
	fi

	((current_sum+=input))
	((current_product=$current_product*input))
	
	if [[ $current_min -gt $input ]]; then
		current_min=$input
	fi

	if [[ $current_max -lt $input ]]; then
		current_max=$input
	fi

done

echo "Sum: $current_sum"
echo "Max: $current_max"
echo "Min: $current_min"
echo "Product: $current_product"
