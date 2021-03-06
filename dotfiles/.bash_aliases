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

alias df="df -h"
alias ls="ls --color=auto"

alias cp="cp -i"
alias ln="ln -i"
alias mv="mv -i"
alias rm="rm -Id"

alias hexdump="hexdump -C"

### macOS specific aliases #########################################################################

if [[ "$OSTYPE" == "darwin"* ]] ; then

  alias chrome="open -a 'google chrome'"
  alias eclipse="open -a eclipse"
  alias finder="open -a Finder"
  alias preview="open -a preview"
  alias vivaldi="open -a vivaldi"

  alias todo='subl -a $HOME/Documents/TODO.txt'

  alias md="macdown"
  alias s="subl -a"

fi


### `ls` aliases ###################################################################################

alias li='ls -l --group-directories-first --time-style=+"%Y-%m-%d %H:%M:%S"' # 1991-08-25 20:57:08
alias ll='ls -l --group-directories-first --time-style=+"%Y %b %d %H:%M:%S"' # 1991 Aug 25 20:57:08


### miscellaneous aliases ##########################################################################

alias a="ack"
alias h="history"
alias r='. $HOME/.bashrc'

alias bn="basename"
alias dn="dirname"
alias rp="realpath"
alias sc="shellcheck"
alias tf="tail -f"
