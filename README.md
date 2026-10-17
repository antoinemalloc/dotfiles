# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What's inside

| Package | Contents |
|---------|----------|
| `git` | `.gitconfig` — user identity, GPG key (commit signing disabled) |
| `zsh` | `.zshrc`, `.zprofile`, `.p10k.zsh` — Oh My Zsh, Powerlevel10k, mise, OpenCode wrapper |
| `opencode` | `~/.config/opencode/` — oh-my-opencode-slim, custom skills |
| `ghostty` | `~/.config/ghostty/` — Ghostty config + Osaka Jade themes |
| `wireguard` | `~/.config/wireguard/` — lab VPN config template (`lab.example.conf`) |
| `Brewfile` | macOS packages (`brew bundle --file Brewfile`) |

## Bootstrap

```bash
git clone https://github.com/voidcode/dotfiles.git ~/dotfiles
cd ~/dotfiles
make install
```

This runs `install.sh`, which installs `stow` via Homebrew (macOS) or APT (Linux), then symlinks everything into place.

## Makefile

| Command | Action |
|---------|--------|
| `make install` | Run install script |
| `make restow` | Re-link all stow packages (`stow -R */`) |
| `make delete` | Remove all symlinks (`stow -D */`) |
| `make check` | Show `git status` |

## Packages

### Homebrew (macOS)

```bash
brew bundle --file Brewfile
```

Installs CLI tools (git, stow, opencode, container), VSCodium, browsers, Ghostty, Signal, VLC/IINA, VeraCrypt, and fonts (JetBrains Mono, Cascadia, Fira Code, Meslo).

### Zsh

- **Framework**: [Oh My Zsh](https://ohmyz.sh/)
- **Theme**: [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- **Plugins**: git

The `.zshrc` includes an `opencode()` wrapper that auto-upgrades OpenCode and oh-my-opencode-slim on every invocation.

### OpenCode

Custom OpenCode configuration with [oh-my-opencode-slim](https://github.com/voidcode/oh-my-opencode-slim), including custom skills, agent tuning, and TUI settings.

## Structure

Each top-level directory is a stow package. Files inside mirror their target location relative to `$HOME`. For example:

```
git/.gitconfig → ~/.gitconfig
zsh/.zshrc    → ~/.zshrc
opencode/.config/opencode/ → ~/.config/opencode/
```
