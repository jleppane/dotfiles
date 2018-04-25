#!/usr/bin/env bash

DOTFILES_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_PATH="$DOTFILES_ROOT/dotfiles"

if [[ "$OSTYPE" == "darwin"* ]] ; then

  . "$DOTFILES_ROOT/macos_brew_install.sh"
  . "$DOTFILES_ROOT/macos_misc_install.sh"

  . "$DOTFILES_ROOT/macos_bash_setup.sh"
  . "$DOTFILES_ROOT/macos_iterm_setup.sh"
  . "$DOTFILES_ROOT/macos_misc_setup.sh"
  . "$DOTFILES_ROOT/macos_sublime_setup.sh"
  . "$DOTFILES_ROOT/macos_vim_setup.sh"
  . "$DOTFILES_ROOT/macos_virtualbox_setup.sh"

fi
