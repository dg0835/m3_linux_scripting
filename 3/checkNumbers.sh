#!/bin/sh

DATE=$(date '+%Y%m%d')

LOTTERYFILE="LotteryNumbers.${DATE}"

USER_CHOICES=()

for ((i = 1 ; i < 6 ; i++)); do

	echo User, please enter ball number ${i} 
	read BALL_NUMBER

	USER_CHOICES+=($BALL_NUMBER)

	echo $BALL_NUMBER is the ball number
done

echo User, Please enter your bonus ball number
read BONUS_BALL_NUMBER
USER_CHOICES+=($BONUS_BALL_NUMBER) 

echo ${USER_CHOICES[2]} 

RANDOM_NUMBERS=()
COUNTER=0
MATCHES=0

function compare_numbers(){

cat $LOTTERYFILE | while read number; do

	CURRENT_USER_BALL=${USER_CHOICES[${COUNTER}]}

	echo Randomly chosen ball number is ${number}

	echo Your ball is $CURRENT_USER_BALL

	if [[ $number == $CURRENT_USER_BALL ]]; then
		echo "You got a match with number ${number} well played!"
		MATCHES=${MATCHES}+1
		echo "current value of matches is $MATCHES"
		echo $(($MATCHES))
	fi

	COUNTER=${COUNTER}+1

done

}

echo "$(compare_numbers) matches"

exit 0
