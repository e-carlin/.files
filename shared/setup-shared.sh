set -eou pipefail

echo "Settings up shared configs"

source "${HOME}/code/dotfiles/shared/constants.sh"

symlink_with_bak "$DOT_FILES_BASE/shared/.vimrc" "$HOME/.vimrc"
symlink_with_bak "$DOT_FILES_BASE/shared/.tmux.conf" "$HOME/.tmux.conf"
symlink_with_bak "$DOT_FILES_BASE/shared/.inputrc" "$HOME/.inputrc"
symlink_with_bak "$DOT_FILES_BASE/shared/.vim" "$HOME/.vim"

# Create ~/bin to put my specific scripts in
mkdir -p "$HOME/bin"

# Do OS specific install
readonly OS="$(uname -a | cut -d ' ' -f1)"
if [[ "${OS}" = "Linux" ]]; then
    echo "Linux OS identified. Proceeding with Linux specific setup"
    bash "${DOT_FILES_BASE}/linux/setup-linux.sh"

elif [[ "${OS}" = "Darwin" ]]; then
    echo "Darwin OS identified. Proceeding with Darwin specific setup"
    bash "${DOT_FILES_BASE}/mac/setup-mac.sh"
else
    "OS ${OS} is unsupported. Exiting..."
    exit 1
fi
