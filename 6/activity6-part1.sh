#!/bin/sh

echo "Enter parameter a"
read a

echo "Enter parameter b"
read b

if [[ $a -gt $b ]]; then
	echo "True"
else
	echo "False"
fi

exit 0
