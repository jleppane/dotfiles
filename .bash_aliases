#!/usr/bin/env bash

### default options ################################################################################

if [[ "$OSTYPE" == "darwin"* ]] ; then

  alias egrep="gegrep --color=auto"
  alias fgrep="gfgrep --color=auto"
  alias grep="ggrep --color=auto"

fi

if [[ "$OSTYPE" == "linux"* ]] ; then

  alias egrep="egrep --color=auto"
  alias fgrep="fgrep --color=auto"
  alias grep="grep --color=auto"

fi

alias ls="ls --color=auto"


### `ls` aliases ###################################################################################

alias li='ls -l --group-directories-first --time-style=+"%Y-%m-%d %H:%M:%S"' # 1991-08-25 20:57:08
alias ll='ls -l --group-directories-first --time-style=+"%Y %b %d %H:%M:%S"' # 1991 Aug 25 20:57:08
