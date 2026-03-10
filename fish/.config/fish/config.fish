#
# ███████╗██╗███████╗██╗  ██╗
# ██╔════╝██║██╔════╝██║  ██║
# █████╗  ██║███████╗███████║
# ██╔══╝  ██║╚════██║██╔══██║
# ██║     ██║███████║██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝
# A smart and user-friendly command line
# https://fishshell.com
# cSpell:words pkgconfig pyenv nvim Nord gopath nvimpager Renviron ripgreprc ripgrep zoxide jdhoffa sharkdp neovim

starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'
thefuck --alias | source

if test "$TERM" = "wezterm"
    if not infocmp wezterm >/dev/null 2>&1
        set -gx TERM xterm-256color
    end
end

set -U LANG en_US.UTF-8 # language
set -U LC_ALL en_US.UTF-8

set -gx CPPFLAGS -I/opt/homebrew/opt/sqlite/include
set -gx LDFLAGS -L/opt/homebrew/opt/sqlite/lib
set -gx PKG_CONFIG_PATH /opt/homebrew/opt/sqlite/lib/pkgconfig
set -gx NPM_GLOBAL /Users/jdhoffa/.npm-global/
set -gx BUN_INSTALL /Users/jdhoffa/.bun
set -gx RUST_CARGO /Users/jdhoffa/.cargo
set -gx MODULAR_HOME ~/.modular
set -Ux BAT_THEME Nord # 'sharkdp/bat' cat clone
set -Ux EDITOR nvim # 'neovim/neovim' text editor
set -Ux fish_greeting # disable fish greeting

set -U FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux KIT_EDITOR /opt/homebrew/bin/nvim # https://www.scriptkit.com/
set -Ux LANG en_US.UTF-8
set -Ux LC_ALL en_US.UTF-8
set -Ux NODE_PATH "~/.nvm/versions/node/v24.9.0/bin/node" # 'nvm-sh/nvm'
set -Ux NVM_DIR ~/.nvm
set -Ux PAGER /opt/homebrew/bin/nvimpager
set -Ux VISUAL nvim

# ordered by priority - bottom up
fish_add_path /opt/homebrew/bin # https://brew.sh/
fish_add_path /opt/homebrew/sbin
fish_add_path /opt/homebrew/opt/sqlite/bin
fish_add_path /opt/homebrew/opt/libpq/bin
fish_add_path /opt/homebrew/opt/openjdk/bin
fish_add_path $NPM_GLOBAL/bin
fish_add_path $NVM_DIR/versions/node/v24.9.0/bin
fish_add_path $HOME/local/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.tmux/plugins/tmux-nvr/bin
fish_add_path $HOME/.tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path $HOME/.config/bin
fish_add_path $BUN_INSTALL/bin
