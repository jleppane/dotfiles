# add homebrew's bin and sbin directories to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# use thefuck
eval $(thefuck --alias)

# use GNU coreutils as default
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# include .bash_*
[ -f "$HOME/.bash_alias" ]  && . "$HOME/.bash_alias"
[ -f "$HOME/.bash_color" ]  && . "$HOME/.bash_color"
[ -f "$HOME/.bash_prompt" ] && . "$HOME/.bash_prompt"
