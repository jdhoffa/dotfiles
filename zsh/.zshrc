[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export EDITOR=nvim

if [ "${TERM:-}" = "wezterm" ] && ! infocmp wezterm >/dev/null 2>&1; then
  export TERM=xterm-256color
fi

source "$HOME/.config/broot/launcher/bash/br"
