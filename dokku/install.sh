#!/bin/sh

if [ ! -d "$HOME/.dokku" ]; then
    git clone git@github.com:progrium/dokku.git ${HOME}/.dokku
fi