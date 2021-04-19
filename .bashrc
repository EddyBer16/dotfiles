#!/usr/bin/env bash

WEATHER="$(curl -s 'http://wttr.in/Mexico?format=%c%t\n')"

weather_in_right()
{
  printf "%*s%s" $COLUMNS $'\e[30m\e[32m' "$WEATHER "
}

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# git
# curl https://raw.githubusercontent.com/git/git/master/contrib/competion/git-prompt.sh
source ~/git-prompt.sh
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
source ~/git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

# prompt
PS1='\[$(tput sc; weather_in_right; tput rc)\]'
PS1='🦄'
PS1+=' \[\e[1;35m\]\u: '
PS1+='\[\e[1;36m\]\[\e[0;36m\]🍕\W'
PS1+=' \[\e[0;35m\]$(__git_ps1 "(%s)")'
export PS1+='\[\e[1;32m\]\$ \[\e[0m\]'
export PS2='💁‍ '

# ALIASES
# FILES
alias show='cat'
alias edit='nvim'
alias e='edit'
alias ebrc='edit ~/.bashrc'
alias evrc='edit ~/.vimrc'
alias l='la'
alias ls='ls --color'
alias ll='ls -l --color'
alias la='ls -la --color'

# BASH
alias reload='source ~/.bashrc && clear'
alias f4='source ~/.bashrc && clear'
alias c='clear'
alias q='exit'

# Navigation
alias ~='cd ~'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

# Weather
alias weather='curl -4 http://v2.wttr.in/Mexico'
alias moon='curl -4 https://wttr.in/Moon'

# Web search
# sudo apt-get install w3m w3m-image
DUCKDUCKGO="duckduckgo.com/"
WIKIPEDIA="es.wikipedia.org/wiki/"
alias ddg='w3m $DUCKDUCKGO'
alias wikip='w3m $WIKIPEDIA'
