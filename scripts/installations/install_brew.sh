#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing wget"
brew install wget
echo

echo "Installing ripgrep"
brew install ripgrep
echo

echo "Installing fzf"
brew install fzf
echo
