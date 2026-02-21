# Twomedux

An opinionated Ubuntu setup based on [Omabuntu](https://github.com/omakasui/omabuntu). One command turns a fresh Ubuntu install into a curated development environment.

## Install

```bash
curl -sL https://raw.githubusercontent.com/mtzirkel/twomed-linux/main/boot.sh | bash
```

## What you get

- **Terminal:** Ghostty with Ctrl+V paste and theme switcher integration
- **Shell:** Zsh + Starship prompt
- **Theme:** Everforest (default), with 8 other curated themes available
- **Editor:** Neovim (LazyVim)
- **Apps:** Chromium, Flameshot, LocalSend, Bitwarden, Obsidian, Zen
- **Web apps:** Claude, HEY
- **Keybinds:** Ctrl+Super+Left/Right for workspace navigation, Super+Return for terminal
- **Dotfiles:** Automatically clones [mtzirkel/dotfiles](https://github.com/mtzirkel/dotfiles) for cross-platform configs (macOS + Linux)

## Themes

Catppuccin Mocha, Everforest, Nord, Gruvbox, Kanagawa, Matte Black, Osaka Jade, Ristretto, Ethereal

Switch themes with `Super+Shift+Ctrl+Space`.

## Based on

Built on [Omabuntu](https://github.com/omakasui/omabuntu), which is itself a fork of [Omakub](https://omakub.org). The internal `omakub-*` tooling and theme system come from upstream.

## License

Released under the [MIT License](https://opensource.org/licenses/MIT).
