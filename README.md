# dotfiles

Personal macOS configs for zsh, Neovim, Warp, and related tools.

## What's included

| Path | Destination |
| --- | --- |
| `home/` | `~` (`.zshrc`, `.zprofile`, `.p10k.zsh`, `.vimrc`, `.gitconfig`, `.gitmessage`) |
| `config/nvim/` | `~/.config/nvim` |
| `config/neofetch/` | `~/.config/neofetch` |
| `warp/` | Warp `settings.toml` and `keybindings.yaml` |
| `oh-my-zsh/themes/tay.zsh-theme` | Oh My Zsh theme |

SSH keys, history, and app caches are not in this repo.

## Install

```bash
git clone git@github.com:taysatte/dotfiles.git ~/dev/dotfiles
cd ~/dev/dotfiles
./install.sh
```

Existing files are moved to `~/.dotfiles-backup-<timestamp>` before linking.

## Commit messages

Use lowercase `<action>: <description>`:

```
add: neovim telescope keymaps
update: warp font size
fix: zsh path for homebrew ruby
remove: unused p10k instant prompt block
```

A commit template lives in `home/.gitmessage` and is set via `commit.template` in `.gitconfig`.

## Notes

- Shell setup expects [Oh My Zsh](https://ohmyz.sh/), [Powerlevel10k](https://github.com/romkatv/powerlevel10k), and Homebrew packages such as `eza`, `fzf`, `fd`, and `zsh-syntax-highlighting`.
- Neovim plugins install via [lazy.nvim](https://github.com/folke/lazy.nvim) on first launch.
- Warp's Corduroy theme lives in a [separate repo](https://github.com/taysatte/corduroy-theme-warp).
