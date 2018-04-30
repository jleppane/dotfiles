#!/usr/bin/env bash

if ! command -v brew > /dev/null ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask

brew install ack
brew install bash-completion
brew install coreutils
brew install findutils
brew install gawk
brew install git
brew install gnu-sed
brew install grep
brew install hg
brew install htop
brew install packer
brew install packer-completion
brew install shellcheck
brew install terminal-notifier
brew install thefuck
brew install vagrant-completion
brew install watch
brew install wget
brew install yle-dl
brew install youtube-dl

brew cask install cheatsheet
brew cask install coconutbattery
brew cask install eclipse-ide
brew cask install gimp
brew cask install google-chrome
brew cask install gpg-suite
brew cask install iterm2
brew cask install java
brew cask install libreoffice
brew cask install spotify
brew cask install sublime-text
brew cask install vagrant
brew cask install virtualbox
brew cask install vivaldi
brew cask install vlc
brew cask install wireshark

brew cleanup
