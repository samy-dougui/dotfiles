########################
# Antigen
########################
source ~/antigen.zsh
source ~/.theme

antigen use oh-my-zsh
antigen bundle StackExchange/blackbox
antigen bundle brew
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle docker
antigen bundle docker-compose
antigen bundle git
antigen bundle golang
antigen bundle npm
antigen bundle nvm
antigen bundle python
antigen bundle virtualenv
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

export VIRTUAL_ENVS=~/envs

alias g="git"
alias ls="ls -p -G"
alias la="ls -A"
alias ll="exa -l -g --icons"

