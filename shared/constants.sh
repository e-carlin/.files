export readonly DOT_FILES_BASE="${HOME}/code/dotfiles"

symlink_with_bak() {
    if [[ -f "$2" ]]; then
        mv "$2" "$2.bak"
    fi
    ln -sf "$1" "$2"
}
export -f symlink_with_bak

install_if_command_not_found() {
    command -v $1 >/dev/null 2>&1  || $2
}
export -f install_if_command_not_found
