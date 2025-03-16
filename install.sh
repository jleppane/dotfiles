#!/usr/bin/env bash

if ! command -v brew > /dev/null ; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# macOS
softwareupdate --install-rosetta --agree-to-license

# GUI
brew install --cask beekeeper-studio
brew install --cask docker
brew install --cask gimp
brew install --cask gitup
brew install iterm2
brew install libreoffice
brew install macdown
brew install postman
brew install rectangle
brew install topnotch
brew install visual-studio-code
brew install vivaldi

# CLI
brew install ansible
brew install azure-cli
brew install node
brew install opentofu
brew install shellcheck
