#!/usr/bin/env bash

if ! command -v brew > /dev/null ; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# GUI
brew install --cask beekeeper-studio
brew install --cask blender
brew install --cask docker
brew install --cask firefox@developer-edition
brew install --cask gimp
brew install --cask gitup
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask lens
brew install --cask libreoffice
brew install --cask macdown
brew install --cask postman
brew install --cask rectangle
brew install --cask spotify
brew install --cask topnotch
brew install --cask visual-studio-code
brew install --cask vivaldi
brew install --cask vlc
brew install --cask wireshark

# CLI
brew install ansible
brew install azure-cli
brew install bash
brew install coreutils
brew install jq
brew install node
brew install opentofu
brew install shellcheck
brew install tree
brew install vagrant
brew install vagrant-vmware-utility
brew install watch
