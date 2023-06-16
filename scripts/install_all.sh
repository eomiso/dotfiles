#!/bin/bash

set -x
set -o

dirname="installations"

# Get the directory path of the current script
script_dir="$(cd "($(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Set the absolute path of the specified directory
installation_dir="$script_dir/$dirname"

# Execute each shell script found in the directory
for script_file in "$installation_dir"/*.sh; do
  if [ "$script_file" != "$BASH_SOURCE" ]; then
    echo "Running $script_file"
    /bin/bash "$script_file"
    echo "Finished running $script_file"
    echo
  fi
done

source ~/.zshrc
