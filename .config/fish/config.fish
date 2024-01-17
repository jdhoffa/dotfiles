#
# ███████╗██╗███████╗██╗  ██╗
# ██╔════╝██║██╔════╝██║  ██║
# █████╗  ██║███████╗███████║
# ██╔══╝  ██║╚════██║██╔══██║
# ██║     ██║███████║██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝
# A smart and user-friendly command line
# https://fishshell.com
# cSpell:words pkgconfig pnpm pyenv nvim Nord gopath nvimpager Renviron ripgreprc ripgrep zoxide jdhoffa sharkdp neovim

starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'
pyenv init - | source
thefuck --alias | source

set -U LANG en_US.UTF-8 # language
set -U LC_ALL en_US.UTF-8

set -gx CPPFLAGS -I/opt/homebrew/opt/sqlite/include
set -gx LDFLAGS -L/opt/homebrew/opt/sqlite/lib
set -gx PKG_CONFIG_PATH /opt/homebrew/opt/sqlite/lib/pkgconfig
set -gx NPM_GLOBAL /Users/jdhoffa/.npm-global/
set -gx PNPM_HOME /Users/jdhoffa/Library/pnpm # https://pnpm.io/
set -gx RUST_CARGO /Users/jdhoffa/.cargo
set -gx DOCKER_DEFAULT_PLATFORM linux/amd64
set -gx R_ENVIRON_USER ~/.Renviron # https://www.r-project.org/
set -gx R_PROFILE_USER ~/.Rprofile # https://www.r-project.org/
set -Ux BAT_THEME Nord # 'sharkdp/bat' cat clone 
set -Ux EDITOR nvim # 'neovim/neovim' text editor 
set -Ux fish_greeting # disable fish greeting

set -gx RIPGREP_CONFIG_PATH "$HOME/.config/rg/ripgreprc"

set -U FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux GOPATH (go env GOPATH) # https://golang.google.cn/
set -Ux KIT_EDITOR /opt/homebrew/bin/nvim # https://www.scriptkit.com/
set -Ux LANG en_US.UTF-8
set -Ux LC_ALL en_US.UTF-8
set -Ux NODE_PATH "~/.nvm/versions/node/v16.19.0/bin/node" # 'nvm-sh/nvm'
set -Ux PAGER ~/.local/bin/nvimpager # 'lucc/nvimpager'
set -Ux VISUAL nvim

# ordered by priority - bottom up
fish_add_path /opt/homebrew/bin # https://brew.sh/
fish_add_path /opt/homebrew/sbin
fish_add_path /opt/homebrew/opt/sqlite/bin
fish_add_path /opt/homebrew/opt/openjdk/bi
fish_add_path $GOPATH/bin
fish_add_path $NPM_GLOBAL/bin
fish_add_path $PNPM_HOME
fish_add_path $HOME/local/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.config/tmux/plugins/tmux-nvr/bin
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path $HOME/.config/bin # my custom scripts
