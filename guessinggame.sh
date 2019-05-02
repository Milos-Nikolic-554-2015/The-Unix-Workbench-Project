#!/bin/bash

echo "How many files are in the current directory?"

function guess {

	number_of_files=$(ls | wc -l)

	while [[ true ]];
	do
		read answer

		if [[ $answer =~ ^[0-9]+$ ]];
		then
			if [[ $answer -eq $number_of_files ]];
			then
				echo "Congratulation! Your answer is correct!"
				exit
			elif [[ $answer -gt $number_of_files ]];
			then
				echo "Your answer is too high! Please try again."
			elif [[ $answer -lt $number_of_files ]];
			then
				echo "Your answer is too low! Please try again."
			fi
		else
			echo "Only positive integers are allowed! Please try again."
		fi
	done
}

guess
