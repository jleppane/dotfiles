#!/usr/bin/env bash

DOTFILES_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && dirname "$PWD" )"

DOTFILES_PATH="$DOTFILES_ROOT/dotfiles"
SCRIPTS_PATH="$DOTFILES_ROOT/scripts"

if [[ "$OSTYPE" == "darwin"* ]] ; then

  . "$SCRIPTS_PATH/macos_brew_install.sh"
  . "$SCRIPTS_PATH/macos_misc_install.sh"

  . "$SCRIPTS_PATH/macos_bash_setup.sh"
  . "$SCRIPTS_PATH/macos_iterm_setup.sh"
  . "$SCRIPTS_PATH/macos_misc_setup.sh"
  . "$SCRIPTS_PATH/macos_sublime_setup.sh"
  . "$SCRIPTS_PATH/macos_vim_setup.sh"
  . "$SCRIPTS_PATH/macos_virtualbox_setup.sh"

fi
