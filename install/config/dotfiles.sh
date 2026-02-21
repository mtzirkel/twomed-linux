#!/bin/bash

# Clone or update dotfiles repo
if [ -d ~/.dotfiles ]; then
  git -C ~/.dotfiles pull || true
else
  git clone https://github.com/mtzirkel/dotfiles.git ~/.dotfiles
fi

# Run dotfiles install script
bash ~/.dotfiles/install.sh

# Set zsh as default shell (requires password, so use sudo)
if [ "$(basename "$SHELL")" != "zsh" ]; then
  sudo chsh -s "$(which zsh)" "$USER"
fi
