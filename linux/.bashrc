# Constants
source "${HOME}/code/.files/shared/constants.sh"

# Completes some Git commands / branch names
# TODO: Figure out where this lives on linux
#       It seems for debian there is a git-completion package
# source "${DOT_FILES_BASE}/shared/.git-completion.bash"

# Pulls in my aliases
source "${DOT_FILES_BASE}/shared/.bash_aliases"

# Show git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Set ps1 to working dir and git branch if in git repo
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Switch left control and alt keys
xmodmap "${DOT_FILES_BASE}/linux/.xmodmap"