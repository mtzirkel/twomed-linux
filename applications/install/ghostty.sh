#!/bin/bash

# Install Ghostty via the community Ubuntu PPA (mkasberg/ghostty-ubuntu)
sudo add-apt-repository -y ppa:mkasberg/ghostty
sudo apt update -y
sudo apt install -y ghostty

# Create custom desktop entry with X-TerminalArg* keys for xdg-terminal-exec
cat > ~/.local/share/applications/com.mitchellh.ghostty.desktop << EOF
[Desktop Entry]
Type=Application
TryExec=ghostty
Exec=ghostty
Icon=com.mitchellh.ghostty
Terminal=false
Categories=System;TerminalEmulator;
Name=Ghostty
GenericName=Terminal
Comment=A fast, feature-rich, and cross-platform terminal emulator
StartupNotify=true
StartupWMClass=com.mitchellh.ghostty
Actions=New;
X-TerminalArgExec=-e
X-TerminalArgDir=--working-directory=

[Desktop Action New]
Name=New Terminal
Exec=ghostty
EOF

# Add to xdg-terminals
mkdir -p ~/.local/share/xdg-terminals
cp ~/.local/share/applications/com.mitchellh.ghostty.desktop ~/.local/share/xdg-terminals/
