#!/bin/sh

if [ ! -d "$HOME/.dokku" ]; then
    git clone git@github.com:dokku/dokku.git ${HOME}/.dokku
fi
