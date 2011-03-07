PATH=/opt/local/bin:/usr/local/bin:~/bin:$PATH
SHELL=/bin/zsh
autoload -U colors && colors
PS1="%{$fg[yellow]%}%~>%{$reset_color%}"
BUNDLER_EDITOR=/opt/local/bin/vim
export GEM_EDITOR=/Users/dan/bin/bvim

alias screen='screen -h 5000'
alias ls='ls -p'
alias :G='git'
alias :B='boson'
alias :C='cheat'
alias :T='thor'
alias :TT='thor -T'
alias rd='rdebug --no-stop'

source ~/.zshrc-local
source $HOME/.rake_completion.zsh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
