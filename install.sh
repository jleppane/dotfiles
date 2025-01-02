#!/usr/bin/env bash

if ! command -v brew > /dev/null ; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# add brew to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# casks
brew install --cask beekeeper-studio
brew install --cask blender
brew install --cask docker
brew install --cask firefox
brew install --cask gimp
brew install --cask gitup
brew install --cask iterm2
brew install --cask libreoffice
brew install --cask macdown
brew install --cask qgis
brew install --cask spotify
brew install --cask topnotch
brew install --cask visual-studio-code
brew install --cask vivaldi
brew install --cask wireshark

# formulas
brew install ansible
brew install azure-cli
brew install bash-completion
brew install coreutils
brew install docker-completion
brew install docker-compose
brew install node
brew install opentofu
brew install watch

# taps
brew install hashicorp/tap/terraform
brew install hashicorp/tap/vault
