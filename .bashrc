#!/usr/bin/env bash

[ -z "$PS1" ] && return

### macOS specific #################################################################################

if [[ "$OSTYPE" == "darwin"* ]] ; then

  # use GNU utilities as default

  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
  PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
  export PATH

  MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
  MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
  MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
  export MANPATH

  alias awk="gawk"
  alias egrep="gegrep"
  alias fgrep="gfgrep"
  alias grep="ggrep"

fi


### shell options ##################################################################################

# check the window size after each command
shopt -s checkwinsize

# minor errors in the spelling of a directory component in a `cd` command will be corrected
shopt -s cdspell

# extended pattern matching
shopt -s extglob


### history ########################################################################################

HISTFILE="$HOME/.bash_history"
HISTTIMEFORMAT="%Y-%m-%d %H:%H:%S " # 1991-08-25 20:57:08

# save all lines of a multiple-line command in the same history entry
shopt -s cmdhist

# history list is appended
shopt -s histappend

PROMPT_COMMAND="history -a; history -c; history -r"


### include .bash_prompt ###########################################################################

[ -f "$HOME/.bash_prompt" ] && . "$HOME/.bash_prompt"
