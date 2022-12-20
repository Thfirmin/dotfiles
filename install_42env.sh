#!/bin/sh

PKG="
python3
python3-pip
libbsd-dev"

# install libbsd-dev
# install valgrind
# install gcc e clang
# install make
# install cmake
# install 42Header
# Config 42header
# Create 42Rio Desktop

# Install/Upgrade nominette
if [[ !$(python3 --version 2> /dev/null) ]]; then
	sudo apt install python3
else
	sudo apt update python3
	sudo apt upgrade python3
fi

if [[ !$(python3-pip --version 2> /dev/null) ]]; then
	sudo apt install python3-pip
else
	sudo apt update python3-pip
	sudo apt upgrade python3-pip
fi

if [[ !$(norminette --version 2> /dev/null) ]]; then
	python3 -m pip install --upgrade pip setuptools
	python3 -m pip install norminette
else
	python3 -m pip install --upgrade norminette
fi

if 
