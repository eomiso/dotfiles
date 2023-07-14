#!/bin/bash

export PROFILE=/dev/null
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | /bin/bash

nvm install 18
echo -e "Current node version: \033[0;31m$(node -v)\033[0m"
