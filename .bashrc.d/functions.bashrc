#!/bin/bash
################################################################################
# File: functions.bashrc
# Author: Jared Bold
# Date: 03.09.2017
# Description:
#   This is the minimal set of functions needed to be comfortable
################################################################################
# Some things are OS Depenedent so get that info first
OS=`uname`

################################################################################
# grep  #
################################################################################
# grep recursive
function grn() {
  grep -rnI $1 *
}
# grep case-insensitive recursive
function grni() {
  grep -irnI $1 *
}

################################################################################
# $TERM  #
################################################################################
# Create a new terminal and execute what is passed in. Keep the terminal open
# until closed
function new_terminal_hold() {
  ($TERM -hold -e "$SHELL -ic $1")
}

# Create a new terminal and execute what is passed in. Terminal closes once
# command is complete
function new_terminal() {
  ($TERM -e "$SHELL -ic $1")
}

# Change the shell title to argument passed in
function shell_title() {
  export SHELL_TITLE="\033]0;$1\007"
  PROMPT_COMMAND='echo -ne "$SHELL_TITLE"'
}
