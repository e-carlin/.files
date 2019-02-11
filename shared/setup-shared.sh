set -eou pipefail

source "${HOME}/code/.files/shared/constants.sh"

symlink_dot_file() {
    TARGET_PATH="${HOME}/$2"
    SOURCE_PATH="${DOT_FILES_BASE}/$1/$2"
    echo $TARGET_PATH
    if [[ ! -a "${SOURCE_PATH}" ]]; then
        echo "Trying to symlink a non-existent file ${SOURCE_PATH}"
        exit 1
    fi
    if [[ -f "${TARGET_PATH}" && ! -L "${TARGET_PATH}" ]]; then
        echo "File ${TARGET_PATH} already exists and is not a symbolic link. Moving to ${TARGET_PATH}.bak"
        mv "${TARGET_PATH}" "${TARGET_PATH}.bak"
    fi
    if  [[ ! -L  "${TARGET_PATH}" ]]; then
        echo "Creating symlink to dotfile ${SOURCE_PATH}"
        ln -s "${SOURCE_PATH}" "${TARGET_PATH}"
        return
    fi
    echo "Skipping symlink for dotfile ${SOURCE_PATH}. It already exists"
}

export -f symlink_dot_file

symlink_dot_file "shared" ".vimrc"
symlink_dot_file "shared" ".tmux.conf"
symlink_dot_file "shared" ".inputrc"

# Install vim vundle
VUNDLE_TARGET_DIR=~/.vim/bundle/Vundle.vim
if [[ ! -d "${VUNDLE_TARGET_DIR}" ]]; then
    echo "Installing vim vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git ${VUNDLE_TARGET_DIR} 
else
    echo "Vim vundle already install skipping install"
fi
echo "Installing vundle plugins"
vim +PluginInstall +qall


# Do OS specific install
OS="$(uname -a | cut -d ' ' -f1)"
if [[ "${OS}" = "Linux" ]]; then
    echo "Linux OS identified. Proceeding with Linux specific setup"
    bash "${DOT_FILES_BASE}/linux/setup-linux.sh"
    
elif [[ "${OS}" = "Darwin" ]]; then
    echo "Darwin OS identified. Proceeding with Darwin specific setup"
    bash "${DOT_FILES_BASE}/mac/setup-mac.sh"
else
    "Operating system ${OS} is unsupported. Exiting..."
    exit 1
fi
