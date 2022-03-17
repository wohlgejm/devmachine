export PATH="/usr/local/bin:$PATH"
unsetopt beep

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git rbenv)

alias vi="nvim"
alias vim="nvim"

# Kubernetes configs for aws and colo
export KUBECONFIG=$HOME/.kube/config:$HOME/.kube/medallia-kubeconfig

alias kex="kubectl exec"
alias gerpod="kubectl k2 sp -a stella-connect-web -r statefulset -n stella-connect-1 --resource-mem 4Gi"
alias gerconsole="kex -n stella-connect-1 -ti jerry-standalone-pod -c stella-connect-web rails c"
alias prodpod="kubectl k2 sp -a stella-connect-web --run-as-root"
alias prodconsole="kex -n production -ti jerry-standalone-pod -c stella-connect-web rails c"
alias stagingpod="kubectl k2 sp -a stella-connect-web --run-as-root"
alias stagingconsole="kex -n staging -ti jerry-standalone-pod -c stella-connect-web rails c"


export GOPATH="$HOME/go"; export GOROOT="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

alias git-activity="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

export N_PREFIX=$HOME
export PATH=$N_PREFIX/bin:$PATH
autoload -Uz compinit && compinit

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

eval "$(rbenv init - --no-rehash)"
eval "$(pyenv init -)"

# Speed up git plugin by not checking status on every command
DISABLE_UNTRACKED_FILES_DIRTY="true"

export PATH=$PATH:/Users/jerry/oa-suite/scripts/bin

source $ZSH/oh-my-zsh.sh
