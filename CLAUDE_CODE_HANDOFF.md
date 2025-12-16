# Claude Code Handoff: twomed-linux

## Context
Forked from basecamp/omakub to create a minimal, privacy-focused Ubuntu 24.04 setup for personal/work use. User is Director of Technology at Browning Public Schools in Montana, manages IT infrastructure, and is an avid kayaker/new parent. Currently running Arch but building this Ubuntu setup for deployment to other machines.

## Goal
Strip Omakub down to essentials and customize for this specific app list:
- Alacritty (terminal)
- Zen browser
- Chromium
- Obsidian
- Zed editor
- Flameshot (screenshots)
- Bitwarden (password manager)
- Hey email (web app wrapper like Omakub does for Claude)

Keep: Flatpak infrastructure, GNOME + Tactile, web app wrapper system, utility scripts

## Tasks for Claude Code

1. **Audit and strip bloat:**
   - Review `install/terminal/*.sh` - remove unnecessary tools
   - Review `install/desktop/*.sh` - remove apps not in our list
   - Keep: Flatpak setup, GNOME/Tactile, utility infrastructure

2. **Add our apps:**
   - Alacritty with solid default config (Catppuccin or Nord theme)
   - Zen browser installation
   - Bitwarden via Flatpak
   - Verify Chromium, Obsidian, Zed, Flameshot are included/working

3. **Configure Hey wrapper:**
   - Use existing Omakub web app wrapper pattern
   - Create `.desktop` file for Hey (app.hey.com)

4. **Test install script:**
   - Ensure one-command install works: `bash <(curl -sL https://raw.githubusercontent.com/twomed/twomed-linux/main/install.sh)`
   - Verify GNOME keybindings (Super+Left, etc.) work

## User preferences
- Minimal formatting in responses
- Ask clarifying questions if approach is unclear
- Privacy-conscious (no telemetry/data collection apps)
- Keyboard-focused workflow

## Current status
Just forked, nothing modified yet. Ready to start stripping and customizing.
