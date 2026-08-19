#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "$0")" && pwd)"
BACKUP="$HOME/.dotfiles-backup-$(date +%Y%m%d-%H%M%S)"

link() {
  local src="$1"
  local dest="$2"

  mkdir -p "$(dirname "$dest")"

  if [[ -L "$dest" ]]; then
    rm "$dest"
  elif [[ -e "$dest" ]]; then
    mkdir -p "$BACKUP"
    mv "$dest" "$BACKUP/"
    echo "backed up $dest -> $BACKUP/"
  fi

  ln -s "$src" "$dest"
  echo "linked $dest -> $src"
}

echo "Installing dotfiles from $DOTFILES"

# Home-level files
for file in "$DOTFILES"/home/.*; do
  [[ -f "$file" ]] || continue
  name="$(basename "$file")"
  [[ "$name" == "." || "$name" == ".." ]] && continue
  link "$file" "$HOME/$name"
done

# XDG configs
link "$DOTFILES/config/nvim" "$HOME/.config/nvim"
link "$DOTFILES/config/neofetch" "$HOME/.config/neofetch"
link "$DOTFILES/config/btop" "$HOME/.config/btop"
link "$DOTFILES/config/zed/settings.json" "$HOME/.config/zed/settings.json"
link "$DOTFILES/config/zed/keymap.json" "$HOME/.config/zed/keymap.json"
link "$DOTFILES/config/iterm2/themes/kanagawa.itermcolors" "$HOME/.config/iterm2/themes/kanagawa.itermcolors"

# Warp
link "$DOTFILES/warp/keybindings.yaml" "$HOME/.warp/keybindings.yaml"
link "$DOTFILES/warp/settings.toml" "$HOME/.warp/settings.toml"

# Oh My Zsh theme (if Oh My Zsh is installed)
if [[ -d "$HOME/.oh-my-zsh/themes" ]]; then
  link "$DOTFILES/oh-my-zsh/themes/tay.zsh-theme" "$HOME/.oh-my-zsh/themes/tay.zsh-theme"
else
  echo "skipping Oh My Zsh theme (install Oh My Zsh first)"
fi

echo
if [[ -d "$BACKUP" ]]; then
  echo "Existing files were moved to $BACKUP"
fi
echo "Done. Open a new shell or run: source ~/.zshrc"
