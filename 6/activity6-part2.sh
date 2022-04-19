#!/bin/sh

echo "enter parameter a"
read a

echo "enter parameter b"
read b

difference=$((a - b))

if [[ $difference -lt 0 ]]; then
	difference=$((difference * -1))
fi

echo $difference

exit 0
