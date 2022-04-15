#!/bin/sh

LOTTERY_NUMBERS=$(seq 1 1 50)
BONUS_NUMBERS=$(seq 1 1 10)

DATE=$(date '+%Y%m%d') 

LOTTERYFILE="LotteryNumbers.${DATE}"

rm $LOTTERYFILE

touch $LOTTERYFILE

for ((i = 0 ; i < 5 ; i++)); do
	echo $(($RANDOM%50)) >> $LOTTERYFILE
done

echo $(($RANDOM%10)) >> $LOTTERYFILE


 

