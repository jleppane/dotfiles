#!/usr/bin/env bash

# base16 color schemes
# https://raw.githubusercontent.com/chriskempson/base16-iterm2/master/base16-tomorrownight.dark.256.itermcolors
# https://raw.githubusercontent.com/chriskempson/base16-iterm2/master/base16-tomorrownight.dark.itermcolors

# set preferences folder
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "$HOME/Development/personal/dotfiles/iterm"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true
