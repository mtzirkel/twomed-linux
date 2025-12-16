# twomed-linux

A minimal, privacy-focused Ubuntu 24.04 setup forked from [basecamp/omakub](https://github.com/basecamp/omakub). Strips away the bloat and focuses on essential tools for a clean, keyboard-driven workflow.

## What's Included

**Desktop Apps:**
- Alacritty (terminal with Catppuccin theme)
- Zen browser (privacy-focused)
- Chromium
- Obsidian (notes)
- Zed (code editor)
- Flameshot (screenshots)
- Bitwarden (password manager)
- HEY (email web app)
- Claude (AI assistant web app)
- LocalSend (file sharing)

**Terminal Tools:**
- Neovim, GitHub CLI, Docker
- Modern CLI tools: fzf, ripgrep, bat, eza, zoxide

**Infrastructure:**
- GNOME + Tactile (tiling window manager)
- Flatpak support
- Ulauncher (app launcher)

## Installation

Run on a fresh Ubuntu 24.04+ installation:

```bash
bash <(curl -sL https://raw.githubusercontent.com/mtzirkel/twomed-linux/master/boot.sh)
```

## Credits

Based on [Omakub](https://omakub.org) by Basecamp. This fork maintains the excellent infrastructure while focusing on a minimal, privacy-conscious app selection.

## License

Released under the [MIT License](https://opensource.org/licenses/MIT).
