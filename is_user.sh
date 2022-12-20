#!/bin/bash

is_superuser()
{
	if [[ $UID == 0 ]]
	then
		return 0
	else
		return 1
	fi
}
