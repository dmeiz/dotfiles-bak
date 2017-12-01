alias ls='ls -p'
alias :G='git'
alias tmuxnew='tmux new-session -s $(basename $(pwd))'
alias be='bundle exec'
alias vi='TERM=linux vi'
alias less='TERM=linux less'
alias git='TERM=linux git'
alias git push -u origin $(git rev-parse --abbrev-ref HEAD)'
