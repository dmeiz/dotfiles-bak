# keep PATH from getting prefixed again in screen
if [[ ! $PATH_SET = true ]]; then
  export PATH=./bin:~/.rbenv/bin:~/.rbenv/shims:/opt/local/bin:/usr/local/bin:~/bin:$PATH
  export PATH_SET=true
fi

SHELL=/bin/zsh

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

bindkey "^[[3~" delete-char
autoload -U colors && colors
autoload -Uz vcs_info

# turn on completion
#autoload -U compinit
#compinit

export EDITOR=/usr/bin/vim
export GEM_EDITOR=~/bin/bvim
export BUNDLER_EDITOR=$GEM_EDITOR

zstyle ':vcs_info:git:*' formats '[%b] '
precmd () {
  vcs_info
  psvar[1]="$vcs_info_msg_0_"
}
PS1="%{$fg[yellow]%}%(1v.%1v.)%~>%{$reset_color%}"

source ~/.zshrc-local
#source $HOME/.rake_completion.zsh
