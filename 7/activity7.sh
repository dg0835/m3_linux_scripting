#!/bin/sh

line_num=0
score=0
declare -a questions
answers=()

cat quiz.txt | while read line; do
  	questions[$line_num]=`echo $line | awk -F ";" '{print $1}'`
	answers+=(`echo $line | awk -F ";" '{print $2}'`)
	((line_num++))
done

echo ${questions[@]}

