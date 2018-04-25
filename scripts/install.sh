#!/usr/bin/env bash

DOTFILES_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && dirname "$PWD" )"

DOTFILES_PATH="$DOTFILES_ROOT/dotfiles"
SCRIPT_PATH="$DOTFILES_ROOT/script"

if [[ "$OSTYPE" == "darwin"* ]] ; then

  . "$SCRIPT_PATH/macos_brew_install.sh"
  . "$SCRIPT_PATH/macos_misc_install.sh"

  . "$SCRIPT_PATH/macos_bash_setup.sh"
  . "$SCRIPT_PATH/macos_iterm_setup.sh"
  . "$SCRIPT_PATH/macos_misc_setup.sh"
  . "$SCRIPT_PATH/macos_sublime_setup.sh"
  . "$SCRIPT_PATH/macos_vim_setup.sh"
  . "$SCRIPT_PATH/macos_virtualbox_setup.sh"

fi
