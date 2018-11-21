set -eou pipefail

source "${HOME}/code/.files/shared/constants.sh"

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

symlink_dot_file "shared" ".vimrc"
symlink_dot_file "shared" ".tmux.conf"

# TODO: Determine if we are darwin or linux
# Just doing darwin for now
bash "${DOT_FILES_BASE}/mac/setup-mac.sh"