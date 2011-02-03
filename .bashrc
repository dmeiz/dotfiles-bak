set -o vi

alias screen='screen -h 5000'
alias ls='ls -p'
alias :G='git'
alias :B='boson'
alias :C='cheat'
alias :T='thor'
alias :TT='thor -T'

export PS1='\[\033[1;32m\]\u@\h:\w>\[\033[0m\]'
export EDITOR=vim
export BUNDLER_EDITOR=/Users/dan/bin/bvim
export GEM_OPEN_EDITOR=/Users/dan/bin/bvim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

PATH=$PATH:/opt/local/bin

. ~/.bashrc-local

