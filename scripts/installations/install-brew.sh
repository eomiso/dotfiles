#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing wget"
brew install wget
echo

echo "Installing ripgrep"
brew install ripgrep
echo

echo "Installing autojump"
brew install autojump 
echo

echo "Installing fzf"
brew install fzf
echo

echo "Installing golang"
brew install go

echo "####### You might have to add export GOROOT_BOOTSTRAP=/opt/homebrew/bin/go to your dotfile(.zshrc, .bashrc) #######"

echo "Installing rbenv"
brew install rbenv
