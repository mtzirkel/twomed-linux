#!/bin/bash

# Copy over Twomedux configs
mkdir -p ~/.config
cp -R ~/.local/share/omakub/config/* ~/.config/

# Configure the bash shell using Twomedux defaults
cp ~/.local/share/omakub/default/bashrc ~/.bashrc