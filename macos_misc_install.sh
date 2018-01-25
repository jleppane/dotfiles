#!/usr/bin/env bash

# create directory
mkdir "$HOME/.config"

# install or update base16 color schemes
if [ ! -d "$HOME/.config/base16-shell" ] ; then
  git clone "git://github.com/chriskempson/base16-shell.git" "$HOME/.config/base16-shell"
else
  git -C "$HOME/.config/base16-shell" pull
fi
