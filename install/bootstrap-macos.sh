#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "$SCRIPT_DIR/.." && pwd)"
BREWFILE="$REPO_ROOT/Brewfile"

if [[ "$(uname -s)" != "Darwin" ]]; then
  echo "This script is intended for macOS only." >&2
  exit 1
fi

if ! command -v xcode-select >/dev/null 2>&1; then
  echo "xcode-select not found. Install Xcode Command Line Tools first." >&2
  exit 1
fi

if ! xcode-select -p >/dev/null 2>&1; then
  echo "Installing Xcode Command Line Tools..."
  xcode-select --install || true
  echo "Finish the GUI install, then rerun this script."
  exit 0
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ ! -f "$BREWFILE" ]; then
  echo "Brewfile not found at $BREWFILE" >&2
  exit 1
fi

echo "Ensuring ~/Documents/github exists..."
mkdir -p "$HOME/Documents/github"

echo "Updating Homebrew..."
brew update

echo "Installing dependencies from Brewfile..."
brew bundle --file "$BREWFILE"

echo "Done. Next steps:"
echo "  1) Run ./install/link.sh"
echo "  2) Open WezTerm and verify tools (brew, git, nvim)"
