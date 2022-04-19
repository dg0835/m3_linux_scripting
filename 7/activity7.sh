#!/bin/sh

line_num=0
score=0

cat quiz.txt | while read line; do
  	questions=`echo $line | awk -F ";" '{print $1}'`
	answer=`echo $line | awk -F ";" '{print $2}'`

	echo "Enter your answer [y/n]"
	read user_answer
	if [[ "$user_answer" == $"answer" ]]; then
		((score++))
		echo "Correct! Score is now $score" 
	else
		echo "Wrong"
	fi
done

echo ${questions[@]}

