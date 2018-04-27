#!/usr/bin/env bash

# create symbolic links
ln -sf "$DOTFILES_PATH/.ackrc"     "$HOME/.ackrc"
ln -sf "$DOTFILES_PATH/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES_PATH/.hgrc"      "$HOME/.hgrc"

# remove "last login" message on terminal
if [ ! -f "$HOME/.hushlogin" ] ; then
  touch "$HOME/.hushlogin"
fi
