alias vi="nvim"
alias vim="nvim"

alias kex="kubectl exec"
alias prodconsole="kex -n production -ti jerry-standalone-pod -c connect-web-production rails c"

alias git-activity="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

export N_PREFIX=/Users/jerry
export PATH=$N_PREFIX/bin:$PATH
autoload -Uz compinit && compinit

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

eval "$(rbenv init - --no-rehash)"

# plugins=(git ruby rails docker docker-compose)

# Speed up git plugin by not checking status on every command
DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_THEME="powerlevel10k/powerlevel10k"
