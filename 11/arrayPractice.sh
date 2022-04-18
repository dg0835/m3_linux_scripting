#!/bin/sh

myarray=()

for ((i = 0 ; i < 5 ; i++)); do
	echo $i
	myarray+=($i)
	echo ${myarray[$i]}
done


echo ${myarray[@]}
