#!/usr/bin/env bash

# create symbolic link
ln -sf "$HOME/Development/personal/dotfiles/.vimrc" "$HOME/.vimrc"

# install plugins
source "$HOME/Development/personal/dotfiles/vim_install_plugins.sh"
