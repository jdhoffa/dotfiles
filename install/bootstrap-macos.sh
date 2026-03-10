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

readarray -t BREW_TAPS < <(awk -F'"' '/^[[:space:]]*tap[[:space:]]+"/ { print $2 }' "$BREWFILE")
readarray -t BREW_FORMULAE < <(awk -F'"' '/^[[:space:]]*brew[[:space:]]+"/ { print $2 }' "$BREWFILE")
readarray -t BREW_CASKS < <(awk -F'"' '/^[[:space:]]*cask[[:space:]]+"/ { print $2 }' "$BREWFILE")

install_brew_entries() {
  local label="$1"
  local install_type="$2"
  shift 2
  local entries=("$@")
  local total="${#entries[@]}"

  if (( total == 0 )); then
    return
  fi

  echo "Installing $label ($total)..."
  local index=0
  for entry in "${entries[@]}"; do
    ((index += 1))
    echo "  [$index/$total] $install_type: $entry"
    case "$install_type" in
      tap)
        brew tap "$entry"
        ;;
      formula)
        brew install "$entry"
        ;;
      cask)
        brew install --cask "$entry"
        ;;
      *)
        echo "Unknown install type: $install_type" >&2
        exit 1
        ;;
    esac
  done
}

install_brew_entries "Homebrew taps" "tap" "${BREW_TAPS[@]}"
install_brew_entries "Homebrew formulae" "formula" "${BREW_FORMULAE[@]}"
install_brew_entries "Homebrew casks" "cask" "${BREW_CASKS[@]}"

echo "Done. Next steps:"
echo "  1) Run: ./install/stow.sh"
echo "  2) Open WezTerm and verify tools (brew, stow, git, nvim)"
