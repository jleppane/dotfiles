#!/usr/bin/env bash

# install vim-plug
if [ ! -f "$HOME/.vim/autoload/plug.vim" ] ; then
  mkdir -p "$HOME/.vim/autoload"
  wget -P "$HOME/.vim/autoload" "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
fi

# create temporary file and install plugins
sed -n "/^call plug#begin/,/^call plug#end/p" "$HOME/.vimrc" > "$HOME/.vimrc-plug"
vim -u "$HOME/.vimrc-plug" +PlugInstall +qall
rm "$HOME/.vimrc-plug"
