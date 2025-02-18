#!/bin/bash

export PROFILE=/dev/null
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

nvm install 20
echo -e "Current node version: \033[0;31m$(node -v)\033[0m"
