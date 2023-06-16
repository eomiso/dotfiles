#!/bin/bash

softwareupdate --install-rosetta
curl -o "$HOME/Download/Docker.dmg" "https://download.docker.com/mac/stable/Docker.dmg"

sudo hdiutil attach "$HOME/Download/Docker.dmg"
sudo /Volumes/Docker/Docker.app/Contents/MacOS/install
sudo hdiutil detach /Volumes/Docker

