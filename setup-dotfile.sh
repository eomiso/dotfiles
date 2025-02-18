#!/bin/bash
# Use https url if needed
git clone --bare https://github.com/eomiso/dotfiles.git $HOME/.dotfile --branch main
function dotfile {
   /usr/bin/git --git-dir=$HOME/.dotfile/ --work-tree=$HOME $@
}
mkdir -p .dotfile-backup
dotfile checkout
if [ $? = 0 ]; then
  echo "Checked out dotfile.";
else
  echo "Backing up pre-existing dot files.";
  dotfile checkout 2>&1 | egrep "\s+\." | awk {'print $2'} | xargs -I{} mv {} .dotfile-backup/{}
fi;
dotfile checkout
dotfile config status.showUntrackedFiles no
alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfile/ --work-tree=$HOME'