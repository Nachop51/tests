#!/bin/bash
clear -x
echo "Lets play rock paper scissors!"
echo "Chose 1 for rock, 2 for paper and 3 for scissors"
read user
if (($user == 1))
then 
	echo "You chose Rock"
elif (($user == 2))
then
	echo "You chose Paper"
else
	echo "You chose Scissors"
fi
cpu=$(($RANDOM % 3 + 1))
if (($cpu == 1))
then
	echo "CPU chooses Rock"
elif (($cpu == 2))
then
	echo "CPU chooses Paper"
else 
	echo "CPU chooses Scissors"
fi

if (($user == $cpu))
then
	echo "TIE!"
fi
if (($user == 1 && $cpu == 2))
then
	echo "Paper wins against rock"
	echo "CPU WINS!"
elif (($user == 2 && $cpu == 1))
then
	echo "Paper wins against rock"
	echo "YOU WIN!"
fi

if (($user == 1 && $cpu == 3))
then
	echo "Rock wins against scissors"
	echo "YOU WIN!"
elif (($user == 3 && $cpu == 1))
then
	echo "Rock wins against scissors"
	echo "CPU WINS!"
fi

if (($user == 2 && $cpu == 3))
then
	echo "Scissors wins against paper"
	echo "CPU WINS!"
elif (($user == 3 && $cpu == 2))
then
	echo "Scissors wins against paper"
	echo "YOU WIN!"
fi
