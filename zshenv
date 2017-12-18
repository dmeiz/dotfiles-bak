alias ls='ls -p'
alias :G='git'
alias tmuxnew='tmux new-session -s $(basename $(pwd))'
alias be='bundle exec'
alias vi='TERM=linux vi'
alias less='TERM=linux less'
alias git='TERM=linux git'
alias push-origin='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias be-pry="be pry -r './config/environment'"
