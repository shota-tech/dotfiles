export PROMPT='%F{green}%1~%f %# '

alias g='git'
alias cl='clear'
alias cur='cursor'
alias repo='cd $(ghq root)/$(ghq list | peco)'

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(mise activate zsh)"
source <(fzf --zsh)
source "$XDG_CONFIG_HOME/fzf/catppuccin-fzf-mocha.sh"
