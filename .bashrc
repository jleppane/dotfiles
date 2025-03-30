# add homebrew's bin and sbin directories to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# use GNU coreutils as default
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
