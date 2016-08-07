#!/usr/bin/env bash

# Install brew if not installed
which -s brew
if [[ $? != 0 ]] ; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install brew dependencies
brew bundle --file=Brewfile

# Sync dotfiles
rcup -x tags -x README.md -x LICENCE -x bootstrap.sh -U Brewfile
