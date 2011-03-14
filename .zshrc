# keep PATH from getting prefixed again in screen
if [[ ! $PATH_SET = true ]]; then
  PATH=/opt/local/bin:/usr/local/bin:~/bin:$PATH
  export PATH_SET=true
fi

SHELL=/bin/zsh
bindkey "^[[3~" delete-char
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
