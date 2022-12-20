#!/bin/sh




# Variables

# Functions

bash_init()
{
	if [[ -f ${HOME}/.bash_profile ]]
	then
		echo "We have a bash_profile"
	else
		if [[ -f ${HOME}/.profile ]]
		then
			echo "We have a profile"
		else
			echo "We don't have any profile"
		fi
	fi
}

zsh_init()
{
	echo $ZSH
}

# Verify Terminal Interpreter

## Verify existece of Bash binary file
if [ ${BASH} ]
then
	bash_init
else
	echo "Don't have bash"
fi

## Verify existece of Zsh binary file
if [ ${ZSH} ]
then
	zsh_init
else
	echo "Don't have zsh"
fi

