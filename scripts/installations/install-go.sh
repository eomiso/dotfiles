#!/bin/bash

set -x
set -o

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

gvm install go1.19
gvm use go1.19 --default