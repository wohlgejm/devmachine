# Rbenv
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# Kiex Elixir Version Manager
set PATH $HOME/.kiex/bin $PATH

# Golang
set -gx GOPATH $HOME/go; set -gx GOROOT $HOME/.go; set -gx PATH $GOPATH/bin $PATH; # g-install: do NOT edit, see https://github.com/stefanmaric/g

# Anaconda Python
source ~/anaconda3/etc/fish/conf.d/conda.fish

# N Node Version Manager
set PATH $HOME/n/bin $PATH

# Rust
set PATH $HOME/.cargo/bin $PATH

# ADR Tools
set PATH $HOME/adr-tools/src $PATH

# nvim
alias vim=nvim

# Base16 Shell
set BASE16_SHELL "$HOME/.config/base16-shell"
source "$BASE16_SHELL/profile_helper.fish"
