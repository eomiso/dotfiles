#!/bin/bash

curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . "$HOME/.jabba/jabba.sh"

jabba install liberica@1.11.0-11
jabba use liberica@1.11.0-11
jabba alias default 1.11
