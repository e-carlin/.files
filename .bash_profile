alias ll="ls -l"
alias la="ls -all"
alias go="cd ~/code"
alias sbp="source ~/.bash_profile"
alias ackri="ack -r -i"

##### Git #####
alias gs="git status"
alias gcam="git commit -a -m"
alias gp="git push"

source "/Users/$(whoami)/code/.files/.git-completion.bash"

# Show git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

##### NVM #####
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
