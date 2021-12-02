alias vi="nvim"
alias vim="nvim"

# Kubernetes configs for aws and colo
export KUBECONFIG=$HOME/.kube/config:$HOME/.kube/medallia-kubeconfig

alias kex="kubectl exec"
alias gerpod="kubectl k2 sp -a stella-connect-web -r statefulset -n stella-connect-1"
alias gerconsole="kex -n stella-connect-1 -ti jerry-standalone-pod -c stella-connect-web rails c"
alias prodpod="kubectl k2 sp -a stella-connect-web --run-as-root"
alias prodconsole="kex -n production -ti jerry-standalone-pod -c stella-connect-web rails c"

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

export PATH=$PATH:/Users/jerry/oa-suite/scripts/bin
