HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=1000000

setopt extended_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_no_store

bindkey '^Z' undo

export XDG_CONFIG_HOME="$HOME/.config"

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
