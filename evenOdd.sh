#!/bin/bash
echo "Choose a number:"
read number
clear -x 
if [ $((number % 2)) == 0 ]
then
	echo "$number is even!"
else
	echo "$number is odd!"
fi
