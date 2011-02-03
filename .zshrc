alias cdrazoo='cd ~/razoo/razoo'
PATH=$PATH:/opt/local/bin
export SHELL=/bin/zsh
autoload -U colors && colors
PS1="%{$fg[yellow]%}%~>%{$reset_color%}"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias screen='screen -h 5000'
alias ls='ls -p'
alias :G='git'
alias :B='boson'
alias :C='cheat'
alias :T='thor'
alias :TT='thor -T'
