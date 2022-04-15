#!/bin/sh

echo "Please enter your password to be evaluated"
read password

echo $password

echo "Length of your password is ${#password}"

if [[ ${#password} -ge 8 ]]; then
	echo "Password Length is acceptable"
else
	echo "Password is too short, must be at least 8 characters"
fi

all_upper_password=${password^^}
all_lower_password=${password,,}

if [[ $password == $all_upper_password ]]; then
	echo "Lowercase check Failed - Your password must contain at least one lowercase letter"
elif [[ $password == $all_lower_password ]]; then
	echo "Uppercase check Failed - Your password must contain at least one uppercase letter"
else
	echo "Uppercase and lowercase checks passed!"
fi

if [[ $password =~ [0-9] ]]; then
	echo "Number check passed"
else
	echo "Number check failed - Your password must include at least one number"
fi
