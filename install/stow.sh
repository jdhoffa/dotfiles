#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "$SCRIPT_DIR/.." && pwd)"

PACKAGES=(
  bat
  bin
  fish
  htop
  lf
  lvim
  neofetch
  nvim
  starship
  tmux
  Library
)

if ! command -v stow >/dev/null 2>&1; then
  echo "GNU Stow is not installed. Install it first (e.g. brew install stow)." >&2
  exit 1
fi

echo "Linking dotfiles with GNU Stow..."
(
  cd "$REPO_ROOT"
  stow --target="$HOME" --restow "${PACKAGES[@]}"
)

echo "Done."
