#!/bin/bash

set -o
set -x

echo "Installing Zsh..."
wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
mkdir zsh && unxz zsh.tar.xz && tar -xvf zsh.tar -C zsh — strip-components 1
cd zsh && ./configure — prefix="$HOME"
make && make install
echo

echo "Installing Oh-My-Zsh"
export RUNZSH=no
export KEEP_ZSHRC=yes
sh -c  "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/master/tools/install.sh)"
source "$HOME/.zshrc"
echo

echo "Installing Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/thems/powerlevel10k"
echo

echo "Installing fast-syntax-highlighting"
git clone --depth=1 https://github.com/zdharma/fast-syntax-highlighting.git "$ZSH_CUSTOM/plugins/fast-syntax-highlighting"
echo
