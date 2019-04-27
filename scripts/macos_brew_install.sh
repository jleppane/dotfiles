#!/usr/bin/env bash

if ! command -v brew > /dev/null ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask

brew install ack
brew install bash-completion
brew install coreutils
brew install docker-completion
brew install docker-compose-completion
brew install docker-machine-completion
brew install findutils
brew install gawk
brew install git
brew install gnu-sed
brew install golang
brew install googler
brew install grep
brew install hg
brew install htop
brew install jq
brew install jsonlint
brew install kustomize
brew install node
brew install nvm
brew install libav # youtube-mp3
brew install p7zip
brew install packer
brew install packer-completion
brew install protobuf
brew install shellcheck
brew install terminal-notifier
brew install terraform
brew install thefuck
brew install tree
brew install unrar
brew install vagrant-completion
brew install watch
brew install watchman
brew install wget
brew install wine
brew install yamllint
brew install yle-dl
brew install youtube-dl

brew cask install cheatsheet
brew cask install coconutbattery
brew cask install docker
brew cask install eclipse-ide
brew cask install gimp
brew cask install gitup
brew cask install google-chrome
brew cask install google-cloud-sdk
brew cask install iterm2
brew cask install java
brew cask install libreoffice
brew cask install macdown
brew cask install postman
brew cask install sequel-pro
brew cask install slack
brew cask install spotify
brew cask install sublime-text
brew cask install vagrant
brew cask install virtualbox
brew cask install vivaldi
brew cask install vlc
brew cask install wireshark

brew cleanup
