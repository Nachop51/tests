#!/bin/bash
clear -x
echo "Lets play Rock, Paper, Scissors!"
echo "Choose a number between 1-3, 1 for Rock, 2 for Paper and 3 for Scissors"
read user

case $user in
	1)
		echo "You choose Rock!"
		;;
	2)
		echo "You choose Paper!"
		;;
	3)
		echo "You choose Scissors!"
		;;
	*)
		echo "We can't play if u don't choose right :("
		;;
esac

cpu=$(($RANDOM%3+1))
case $cpu in
	1)
		echo "CPU chooses Rock!"
		;;
	2)
		echo "CPU chooses Paper!"
		;;
	3)
		echo "CPU chooses Scissors!"
		;;
	*)
		echo "Error"
		;;
esac

if (($user == $cpu))
then
	echo "TIE!"
fi

if (($user == 1 ))
then
	if (($cpu == 2))
	then
		echo "YOU LOSE! :("
	elif (($cpu == 3))
	then
		echo "YOU WIN! :)"
	fi
fi

if (($user == 2 ))
then
	if (($cpu == 1))
	then
		echo "YOU WIN! :)"
	elif (($cpu == 3))
	then
		echo "YOU LOSE! :("
	fi
fi

if (($user == 3))
then
	if (($cpu == 1))
	then
		echo "YOU LOSE! :("
	elif (($cpu == 2))
	then
		echo "YOU WIN! :)"
	fi
fi

if (($user > 3 || $user < 1))
then
	echo "We can't play like that :("
fi

