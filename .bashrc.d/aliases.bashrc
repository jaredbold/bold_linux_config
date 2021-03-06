#!/bin/bash
################################################################################
# File: aliases.bashrc
# Author: Jared Bold
# Date: 03.09.2017
# Description:
#   This is the minimal set of aliases needed to be comfortable
################################################################################
# Some things are OS Depenedent so get that info first
OS=`uname`

################################################################################
# Shortcuts  #
################################################################################
alias l='less' 
alias g='git'
alias c='clear'
alias :q='exit' # In case you are to used to working in vim

alias tf='tail -f'    # Continues to dump file to stdout as it is written 
alias nw='(xterm &)'  # Opens a new terminal window

################################################################################
# Vim #
################################################################################
alias vi='vim'
alias vimr='vim -R'
alias vimvs='vim -O'
alias vimsp='vim -o'
alias evimrc='vim ~/.vimrc'

################################################################################
# ls  #
################################################################################
if [ $OS == "Linux" ]; then
  alias ls='ls --color=auto'
  alias ll='ls -la'
fi

################################################################################
# grep  #
################################################################################
if [ $OS == "Linux" ]; then
  alias grep='grep --color=auto'
fi
