[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ "${TERM:-}" = "wezterm" ] && ! infocmp wezterm >/dev/null 2>&1; then
  export TERM=xterm-256color
fi

export FZF_DEFAULT_OPTS="\
--reverse --no-info --prompt=' ' --pointer='' --marker=' ' \
--color=bg+:,bg:,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

export FZF_TMUX_OPTS="-p \
--reverse --no-info --prompt=' ' --pointer='' --marker=' ' \
--color=bg+:,bg:,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

source "$HOME/.config/broot/launcher/bash/br"
