#!/bin/bash


command -v brew >/dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "brew is not installed!"

  # Get the directory path of the current script
  script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

  # Check if the "install_brew.sh" script exists in the same directory
  install_brew_script="$script_dir/install_brew.sh"

  if [ -f "$install_brew_script" ]; then
    echo "Found 'install_brew.sh' script in the same directory"
    
    # Execute the "install_brew.sh" script
    /bin/bash -c "$(cat "$install_brew_script")"
  fi
fi

echo "Install tmux"
brew install tmux
echo

echo "Install nvim"
brew install nvim
echo
