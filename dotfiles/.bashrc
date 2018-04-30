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

  # add private SSH keys to authentication agent if agent has no identities
  if [ -d "$HOME/.ssh" ] && ! ssh-add -l > /dev/null ; then
    find "$HOME/.ssh" -type f -perm 0600 -exec ssh-add {} +
  fi

fi


### locale environment variables ###################################################################

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"


### miscellaneous environment variables ############################################################

export HTOPRC="$HOME/.htoprc"


### shell options ##################################################################################

# check the window size after each command
shopt -s checkwinsize

# minor errors in the spelling of a directory component in a `cd` command will be corrected
shopt -s cdspell

# extended pattern matching
shopt -s extglob


### shell color scheme #############################################################################

bash "$HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh"


### history ########################################################################################

HISTFILE="$HOME/.bash_history"
HISTTIMEFORMAT="%Y-%m-%d %H:%H:%S " # 1991-08-25 20:57:08

HISTCONTROL='ignorespace:ignoredups'
HISTIGNORE='?:??:???:cwd*:pwd*:date*:clear*:exit*'

# unlimited bash history
HISTSIZE=
HISTFILESIZE=

# save all lines of a multiple-line command in the same history entry
shopt -s cmdhist

# history list is appended
shopt -s histappend

PROMPT_COMMAND="history -a; history -c; history -r"


### bash completion ################################################################################

if [ -f /usr/local/etc/bash_completion ] ; then
  . /usr/local/etc/bash_completion
fi


### `thefuck` alias evaluation #####################################################################

if command -v thefuck > /dev/null ; then
  eval "$(thefuck --alias)"
fi


### include .bash_aliases, .bash_functions, .bash_prompt and .bash_utilities #######################

[ -f "$HOME/.bash_aliases" ]   && . "$HOME/.bash_aliases"
[ -f "$HOME/.bash_functions" ] && . "$HOME/.bash_functions"
[ -f "$HOME/.bash_prompt" ]    && . "$HOME/.bash_prompt"
[ -f "$HOME/.bash_utilities" ] && . "$HOME/.bash_utilities"
