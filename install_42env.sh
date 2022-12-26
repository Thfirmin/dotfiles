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

# Install needed packages
for pkgs in $PKG; do
	if [[ $(${pkgs} --version 2> /dev/null) ]]; then
		sudo apt install ${pkgs}
	else
		sudo apt upgrade ${pkgs}
	fi
done

# Install/Upgrade nominette
if [[ !$(norminette --version 2> /dev/null) ]]; then
	python3 -m pip install --upgrade pip setuptools
	python3 -m pip install norminette
else
	python3 -m pip install --upgrade norminette 1> /dev/null
fi

# let g:user42 = 'yourLogin'
# let g:mail42 = 'yourLogin@student.42.fr'
# Install Header42
if [[ !(-f ${HOME}/.vim/plugin/stdheader.vim) ]]; then
	echo "Put your 42 login: "
	read LOGIN
	mkdir ${HOME}/.vim/plugin
	curl https://raw.githubusercontent.com/42Paris/42header/master/plugin/stdheader.vim -o ${HOME}/.vim/plugin/stdheader.vim
fi

# Define vimrc file local
if [[ -f ${HOME}/.vim/.vimrc ]]; then
	VIMRC=${HOME}/.vim/.vimrc
else
	if [[ -f ${HOME}/.vimrc ]]; then
		VIMRC=${HOME}/.vimrc
	fi
fi

if [[ $(cat ${VIMRC} | grep user42) == "" ]]; then
	echo "Put your 42 login: "
	read LOGIN
	echo "let g:user42 = '${LOGIN}'" >> ${VIMRC} 
	echo "let g:mail42 = '${LOGIN}@student.42.fr'" >> ${VIMRC}
else
	while true; do
		echo -n "You want to change your login? [Y/n]: "
		read ANSWER
		if [[ $ANSWER == "y" || $ANSWER == "Y" || $ANSWER == "" ]]; then
			echo -n "Put your 42 login: "
			read LOGIN
			sed -i "s/user42 = '.*'/user42 = \'$LOGIN\'/g" ${VIMRC}
			sed -i "s/mail42 = '.*'/mail42 = \'$LOGIN@student.42.fr\'/g" ${VIMRC}
			ANSWER="n"
		fi
		if [[ $ANSWER == "n" ]]; then
			break ;
		fi
	done
fi
