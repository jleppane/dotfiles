#!/usr/bin/env bash

# create symbolic links
ln -sf "$DOTFILES_PATH/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES_PATH/.hgrc"      "$HOME/.hgrc"
