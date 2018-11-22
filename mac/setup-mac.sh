set -eou pipefail

echo "Setting up mac env"

# TODO: Find out how to export symlink_dot_file from setup-shared.sh
symlink_dot_file() {
    TARGET_PATH="${HOME}/$2"
    SOURCE_PATH="${DOT_FILES_BASE}/$1/$2"
    if ! [[ -a "${SOURCE_PATH}" ]]; then
        echo "Trying to symlink a non-existent file ${SOURCE_PATH}"
        exit 1
    fi
    if ! [[ -L  "${TARGET_PATH}" ]]; then
        echo "Creating symlink to dotfile ${SOURCE_PATH}"
        ln -s "${SOURCE_PATH}" "${TARGET_PATH}"
        return
    fi
    echo "Skipping symlink for dotfile ${SOURCE_PATH}. It already exists"
}
symlink_dot_file "mac" ".bash_profile"

# Enable hold down key to repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# #TODO: Figure out how to get this to bubble up so I don't have to manually run it
echo "Now run 'source ~/.bash_profile'"