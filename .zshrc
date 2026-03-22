autoload -Uz compinit
compinit

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=1000000

setopt extended_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_no_store
setopt auto_list
setopt auto_menu

bindkey -e
bindkey '^Z' undo

export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"
export ABBR_SET_EXPANSION_CURSOR=1

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(sheldon source)"

source <(fzf --zsh)
source "$XDG_CONFIG_HOME/fzf/catppuccin-fzf-mocha.sh"

if [[ -f $HOME/.zshrc.local ]]; then
  source $HOME/.zshrc.local
fi
