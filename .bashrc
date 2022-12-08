parse_git_branch() {
	if [[ $(git branch 2> /dev/null) != "" ]]; then
    	 git branch | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
	else
		echo "(TERMUX)"
	fi
}
#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


#PS1='-{\[\e[1;32m\]\u\[\e[1;32m\]@\[\e[1;32m\]\h}-> \[\033[1;35m\]TERMUX <-[\[\033[1;33m\]\w]\n\[\033[1;37m\]\$\[\033[0m\]'

#PS1="\u@\h[\[\033[33m\]\$(parse_git_branch)\[\033[0m\]]"

export PS1="┌{\u✶\h}─╢\w╟─⌠\$(parse_git_branch)⌡\n└\$"

if [[ -d ${HOME}/.usr/bin ]]; then
	PATH=${HOME}/.usr/bin:${PATH}
fi

if [[ -d ${HOME}/.usr/man ]]; then
	MANPATH=${HOME}/.usr/man:${MANPATH}
fi

if [[ -f ${HOME}/.usr/bash_aliases ]]; then
	source ${HOME}/.usr/bash_aliases
fi

if [[ -f ${HOME}/.usr/bash_functions ]]; then
	source ${HOME}/.usr/bash_functions
fi
alias ferval='echo Quitanda67'
