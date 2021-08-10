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

# PSEINT CONFIG
# We use pseint in my high school, so I decided to use vim
# to edit and run files in terminal
# Instead of opening the gui
PSEINT_PATH='/mnt/c/Program\ Files\ \(x86\)/PSeInt/pseint.exe'
PSEINT_ARGS='--color --nouser'
# In class we use the FIME_UANL profile for PSeInt
PSEINT_PROFILE='--allow_dinamic_dimensions=0 --use_nassi_schneiderman=0 --force_define_vars=1 --allow_concatenation=0 --enable_string_functions=1 --enable_user_functions=1 --force_dot_and_comma=1 --allow_word_operators=0 --overload_equal=1 --coloquial_conditions=0 --lazy_syntax=0 --base_zero_arrays=1'
alias pseint="$PSEINT_PATH $PSEINT_ARGS $PSEINT_PROFILE"

psdraw()
{
  if [ -z $1 ]
  then
    echo "File not specified"
   else
    file=$1
    pseint $file --draw a.psd
    eval $PSEINTDRAW_PATH a.psd
    rm -r a.psd
   fi
}

# C++ Dev for school
# Add clangd to PATH for Vim
# REPLACE <user> WITH YOUR USERNAME AND UPDATE THE VERSION NAME
export PATH=$PATH:/home/<user>/.config/coc/extensions/coc-clangd-data/install/12.0.1/clangd_12.0.1/bin

cppcr()
{
  if [ -z $1 ]
  then
    echo "File not specified"
   else
    file=$1
    executable=${$1::-3}
    executable+=".exe"
    
    clear
    g++ $file -o $executable
    ./$executable
   fi
}
