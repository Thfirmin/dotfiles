#!/bin/bash


function fun1()
{
	echo "fun 1"
}

function fun2()
{
	while read data
	do
		echo $data
	done
}

fun1 | fun2
