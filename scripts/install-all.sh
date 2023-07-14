#!/bin/bash

set -x

if [ -f "$HOME/.zshrc" ]; then
  echo "Backing up ~/.zshrc to ~/.zshrc.bak"
  cp "$HOME/.zshrc" "$HOME/.zshrc.bak"
fi

installations_script_loc="installations"

# Get the directory path of the current script
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Set the absolute path of the specified directory
installation_dir_path="$script_dir/$installations_script_loc"

# Execute each shell script found in the directory
for script_file in $(find "$installation_dir_path" -name "*.sh"); do
  if [ "$script_file" != "${BASH_SOURCE[0]}" ]; then
    echo "Running $script_file"
    /bin/bash "$script_file"
    echo "Finished running $script_file"
    echo
  fi
done
