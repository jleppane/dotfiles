#!/usr/bin/env bash

umask 0077

mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Installed Packages"
mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages"

umask 0022

# install package control
if [ ! -f "$HOME/Library/Application Support/Sublime Text 3/Installed Packages/Package Control.sublime-package" ]; then
  wget -P "$HOME/Library/Application Support/Sublime Text 3/Installed Packages" \
    "https://packagecontrol.io/Package%20Control.sublime-package"
fi

# create symbolic link
if [ ! -h "$HOME/Library/Application Support/Sublime Text 3/Packages/User" ]; then
  ln -s "$HOME/Development/personal/dotfiles/sublime" \
    "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
fi

# install base16 color schemes
cd $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages
git clone git://github.com/chriskempson/base16-textmate.git Base16
