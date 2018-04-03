alias ll="ls -l"
alias la="ls -all"
alias go="cd ~/code"
alias gs="git status"
alias gcam="git commit -a -m"
alias sbp="source ~/.bash_profile"

source /Users/ecarli/code/.files/.git-completion.bash

##### NVM #####
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
