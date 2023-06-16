#!/bin/bash

set -o
set -x

installing() {
  echo "Installing $1"
}

installing "Oh-My-Zsh"
export RUNZSH=no
export KEEP_ZSHRC=yes
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo

ZSH="$HOME/.oh-my-zsh"

installing "Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH/themes/powerlevel10k"
echo

installing "fast-syntax-highlighting"
git clone --depth=1 https://github.com/zdharma/fast-syntax-highlighting.git "$ZSH/plugins/fast-syntax-highlighting"
echo
