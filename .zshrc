export XDG_CONFIG_HOME="$HOME/.config"

bindkey '^Z' undo

alias g='git'
alias lg='lazygit'
alias nv='nvim'
alias repo='cd $(ghq root)/$(ghq list | fzf --reverse)'

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source <(fzf --zsh)
source "$XDG_CONFIG_HOME/fzf/catppuccin-fzf-mocha.sh"
