#!/bin/bash
###############################################################
# .bashrc
# Jared Bold
# 1.22.15
###############################################################
# Configuration
OS=`uname`

###############################################################
#			Prompt				      #
###############################################################
export PS1='\u:\W$ '
P='*/jmbold/'
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

###############################################################
#			Terminal			      #
###############################################################
export EDITOR=vim
if [ $OS == "Linux" ]; then
  export PATH=$PATH:$HOME/bin
  xset b off
fi

# enable vi input mode
set -o vi
# disable the bell
stty erase '^?'

LS_COLORS=$LS_COLORS:'ow=34;1:' ; export LS_COLORS
export LESS="-Ri"
###############################################################
#			Aliases				      #
###############################################################
alias :q='exit'
alias findi='find . -iname'
alias todo=~/.todo
alias ..='cd ..'
if [ $OS == "Linux" ]; then
  alias ls='ls --color=auto'
  alias ll='ls -la'
  alias grep='grep --color=auto'
fi

alias l='less' 
alias nw='(xterm &)'
alias g='grep'

alias c='clear'


alias vi='vim'
alias vimvs='vim -O'
alias vimsp='vim -o'

alias ebrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'

#vim aliases
alias vsvim='vim -O'
alias hsvim='vim -o'
alias tvim='vim -p'
alias evimrc='vim ~/.vimrc'

# grep functions
function grn() {
  grep -rnI $1 *
}
function grni() {
  grep -irnI $1 *
}

function find_ignore_hidden() {
  find `pwd` -type d -path '*/\.*' -prune -o -not -name '.*' -type f -iname \*$1\* -print
}

function new_terminal_hold() {
  (xterm -hold -e "$SHELL -ic $1")
}

function new_terminal() {
  (xterm -e "$SHELL -ic $1")
}
function todo() {
  (new_terminal "'vim $HOME/todo.list'" &)
}
function backlog() {
  (new_terminal "'vim $HOME/backlog/backlog'" &)
}
function shell_title() {
  export SHELL_TITLE="\033]0;$1\007"
  PROMPT_COMMAND='echo -ne "$SHELL_TITLE"'
}

#################################################################
#     Scripts           #
#################################################################
for script in ~/.bashrc.d/*; do
  if [ -x "${script}" ]; then
    source ${script}
  fi
done
