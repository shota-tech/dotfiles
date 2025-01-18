export PROMPT='%F{green}%1~%f %# '

alias g='git'
alias cr='cursor'
alias repo='cd $(ghq root)/$(ghq list | peco)'

eval $(/opt/homebrew/bin/brew shellenv)
