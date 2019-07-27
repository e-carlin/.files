# .files

Sets up my environment . files. I setup my environments the same on all machines so these files assume the same structure.

## Abbreviated Description of my dotfiles

- .bash_aliases
  - General aliases to reduce typing. Reading the file describes all.
- .inputrc
  - This makes it so apps that respect the Readline library (Ex. terminal) use vim like keybindings.
- .tmux.conf
  - This allows one to navigate through tmux panes using vim navigation keys prefixed with ctrl
- .vimrc
  - Use vundle, remap \<Esc\> to "jj"

## Usage

1. mkdir ~/code
1. cd ~/code
1. git clone https://github.com/e-carlin/dotfiles.git
1. ./dotfiles/shared/setup-shared.sh


#TODO:
- find way to manage packages
	- brew install the_silver_searcher
