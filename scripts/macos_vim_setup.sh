#!/usr/bin/env bash

# create symbolic link
ln -sf "$DOTFILES_PATH/.vimrc" "$HOME/.vimrc"

# install plugins
. "$SCRIPTS_PATH/vim_install_plugins.sh"
