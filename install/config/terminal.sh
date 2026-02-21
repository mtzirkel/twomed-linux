#!/bin/bash

# Set Ghostty as the default terminal
omakub-env-set TERMINAL "ghostty"

# Copy Ghostty config
mkdir -p ~/.config/ghostty
cp ~/.local/share/omakub/config/ghostty/config ~/.config/ghostty/config

# Set as default via xdg-terminal-exec
rm -f ~/.config/xdg-terminals.list
rm -f ~/.config/ubuntu-xdg-terminals.list
rm -f ~/.config/GNOME-xdg-terminals.list

cat > ~/.config/ubuntu-xdg-terminals.list << EOF
# Terminal emulator preference order for xdg-terminal-exec
com.mitchellh.ghostty.desktop
EOF
