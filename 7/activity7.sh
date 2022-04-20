#!/bin/sh

score=0
number_of_lines=`wc -l quiz.txt | awk '{print $1}'`

echo "$number_of_lines lines in the quiz"

for ((i = 0 ; i < $number_of_lines ; i++)); do
	current_line=$((i + 1))
  	question=`sed -n "${current_line}p" < quiz.txt | awk -F ";" '{print $1}'`
	answer=`sed -n "${current_line}p" < quiz.txt | awk -F ";" '{print $2}'`

	echo "question: ${question}"
	echo "answer is ${answer}"

	echo "Enter your answer [y/n]"
	read user_answer
	if [[ "$user_answer" == "$answer" ]]; then
		((score++))
		echo "Correct! Score is now $score" 
	else
		echo "Wrong"
	fi
done



echo "Final score: $score"
