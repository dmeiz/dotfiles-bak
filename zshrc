# keep PATH from getting prefixed again in tmux
#
if [[ ! $PATH_SET = true ]]; then
  export PATH=./.bundle/bin:./bin:./.bin:/opt/local/bin:/usr/local/bin:~/bin:/usr/local/heroku/bin:$PATH
  export PATH_SET=true
fi

# ohmyzsh
#
export ZSH=/Users/danhensgen/.oh-my-zsh
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

SHELL=/bin/zsh

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

# use vim mode on the command line
#
bindkey -v
bindkey -M viins "^R" history-incremental-search-backward
bindkey -M vicmd v edit-command-line

# indicate when we're in command mode
#
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- COMMAND --}/(main|viins)/}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

bindkey "^[[3~" delete-char
autoload -U colors && colors
autoload -Uz vcs_info

unsetopt correctall

# turn on completion
#autoload -U compinit
#compinit

export EDITOR=/usr/bin/vim

# display git branch in prompt
#
zstyle ':vcs_info:git:*' formats '[%b] '
precmd () {
  vcs_info
  psvar[1]="$vcs_info_msg_0_"
}
PS1="%{$fg[yellow]%}%(1v.%1v.)%~>%{$reset_color%}"

function serve_dir {
  ruby -run -e httpd . -p 9090
}

eval "$(rbenv init -)"
eval "$(nodenv init -)"
