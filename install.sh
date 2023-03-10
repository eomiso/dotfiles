#!/bin/bash

# Use https url if needed
git clone --bare git@github.com:eomiso/dotfiles.git $HOME/.cfg --branch main
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
