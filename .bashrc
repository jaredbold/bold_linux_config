#!/bin/bash
################################################################################
# File: .bashrc
# Author: Jared Bold
# Date: 03.09.2017
# Description:
#   This is the minimal set of settings needed to have a working bash
#   environment. This loads extra .bashrc files from ~/.bashrc.d directory
################################################################################
OS=`uname`
################################################################################
# Prompt  #
################################################################################
export PS1='\u:\W$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

################################################################################
# Input  #
################################################################################
set -o vi       # input mode is vim
stty erase '^?' # disable the bell, not sure this is needed
if [ "$OS" == "Linux" ]; then
  if xset q &> /dev/null; then
    xset b off
  fi
fi

################################################################################
# Important exports #
################################################################################
export LS_COLORS=$LS_COLORS:'ow=34;1:' # fix ls color outputs
export EDITOR=vim
export LESS="-Ri" # set search to smart-case

################################################################################
# Tab Completion  #
################################################################################
bind "set show-all-if-ambiguous on"
bind "TAB:menu-complete" 

################################################################################
# Important Aliases #
################################################################################
alias ..='cd ..'
alias ebrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'

#################################################################
# Scripts #
#################################################################
for script in ~/.bashrc.d/*; do
  if [ -x "${script}" ]; then
    source ${script}
  fi
done
