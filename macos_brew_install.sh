#!/usr/bin/env bash

if ! command -v brew >> /dev/null ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask

brew cask install google-chrome
brew cask install gpgtools
brew cask install iterm2
brew cask install sublime-text
brew cask install vagrant
brew cask install virtualbox
brew cask install vivaldi

brew cleanup
