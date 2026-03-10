# New Mac Setup (From Scratch)

This guide assumes a brand-new macOS machine where Safari is available and you want to end up with this dotfiles environment.

## 1) Open a terminal

Use Spotlight (`Cmd+Space`) and open `Terminal`.

## 2) Install Apple Command Line Tools

```bash
xcode-select --install
```

Wait for the install to finish before continuing.

## 3) Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then initialize Homebrew in your shell for this session:

```bash
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## 4) Install WezTerm

```bash
brew tap wez/wezterm
brew install --cask wezterm
```

Optional: start using WezTerm now instead of Terminal.

## 5) Create a GitHub workspace directory

```bash
mkdir -p ~/Documents/github
cd ~/Documents/github
```

## 6) Clone dotfiles

If SSH keys are not configured yet, use HTTPS first:

```bash
git clone https://github.com/jdhoffa/dotfiles.git
cd dotfiles
```

## 7) Run bootstrap (brew dependencies + base setup)

```bash
./install/bootstrap-macos.sh
```

This installs all Homebrew formulae/casks in [`Brewfile`](../Brewfile) using `brew bundle`.

## 8) Link dotfiles into your home directory

```bash
./install/link.sh
```

## 9) Verify key tools

```bash
brew --version
git --version
wezterm --version
nvim --version
```

## Notes

- If `brew bundle` fails due to a cask/formula you do not want on this machine, comment it out in `Brewfile` and rerun.
- Keep this file updated whenever you add/remove dependencies so setup stays reproducible.
