alias vi="nvim"
alias vim="nvim"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '[%b]'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n ${vcs_info_msg_0_}> '

alias git-activity="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

export N_PREFIX=/Users/jerry
