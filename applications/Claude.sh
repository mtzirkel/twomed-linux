#!/bin/bash

cat <<EOF >~/.local/share/applications/Claude.desktop
[Desktop Entry]
Version=1.0
Name=Claude
Comment=Claude AI Assistant
Exec=chromium-browser --app="https://claude.ai/" --name=Claude --class=Claude
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakub/applications/icons/Claude.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
