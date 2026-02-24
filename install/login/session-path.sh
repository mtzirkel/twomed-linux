#!/bin/bash

# Add omakub/bin to the GNOME/systemd session PATH
# Without this, custom keybindings (Super+Space, etc.) can't find omakub scripts
mkdir -p "$HOME/.config/environment.d"
cat > "$HOME/.config/environment.d/omakub.conf" <<'EOF'
PATH=${HOME}/.local/share/omakub/bin:${HOME}/.local/bin:${HOME}/bin:${PATH}
EOF
