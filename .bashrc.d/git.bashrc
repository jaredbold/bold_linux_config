#!/bin/bash
###############################################################################
# File:         git.bashrc
# Author:       Jared Bold
# Create Date:  12.09.2016
# Modified Date:12.09.2016
# Description:
#   git bashrc file to be loaded by main bashrc
###############################################################################
. ~/bold_linux_config/git-completion.bash
. ~/bold_linux_config/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u:\W$(__git_ps1 " (%s)")\$ '
