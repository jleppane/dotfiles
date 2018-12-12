#!/usr/bin/env bash

# create symbolic links
ln -sf "$DOTFILES_PATH/.bash_aliases"   "$HOME/.bash_aliases"
ln -sf "$DOTFILES_PATH/.bash_colors"    "$HOME/.bash_colors"
ln -sf "$DOTFILES_PATH/.bash_functions" "$HOME/.bash_functions"
ln -sf "$DOTFILES_PATH/.bash_profile"   "$HOME/.bash_profile"
ln -sf "$DOTFILES_PATH/.bash_prompt"    "$HOME/.bash_prompt"
ln -sf "$DOTFILES_PATH/.bash_utilities" "$HOME/.bash_utilities"
ln -sf "$DOTFILES_PATH/.bashrc"         "$HOME/.bashrc"
