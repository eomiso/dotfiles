#!/bin/bash

set -x
set -o

if [ -f "$HOME/.zshrc" ]; then
  echo "Backing up ~/.zshrc to ~/.zshrc.bak"
  mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
fi

dirname="installations"

# Get the directory path of the current script
script_dir="$(cd "($(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Set the absolute path of the specified directory
installation_dir="$script_dir/$dirname"

# Execute each shell script found in the directory
for script_file in $(find "$installation_dir" -name "*.sh"); do
  if [ "$script_file" != "$BASH_SOURCE" ]; then
    echo "Running $script_file"
    /bin/bash "$script_file"
    echo "Finished running $script_file"
    echo
  fi
done

source ~/.zshrc
