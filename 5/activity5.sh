#!/bin/sh

echo "Enter a number"
read num

reversed_num=`echo $num | rev`

echo reversed_num

echo $num reversed is $reversed_num

exit 0
