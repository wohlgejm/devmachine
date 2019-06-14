# Rbenv
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH

# Kiex Elixir Version Manager
set PATH $HOME/.kiex/bin $PATH

# Golang
set -gx GOPATH $HOME/go; set -gx GOROOT $HOME/.go; set -gx PATH $GOPATH/bin $PATH; # g-install: do NOT edit, see https://github.com/stefanmaric/g

# Anaconda Python
source ~/anaconda3/etc/fish/conf.d/conda.fish

# N Node Version Manager
set PATH $HOME/n/bin $PATH
set -gx N_PREFIX $HOME/n

# Rust
set PATH $HOME/.cargo/bin $PATH

# nvim
alias vim=nvim

# Base16 Shell
set BASE16_SHELL "$HOME/.config/base16-shell"
source "$BASE16_SHELL/profile_helper.fish"
