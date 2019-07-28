set -ou pipefail # No set -e. I believe the read below fails with it

symlink_with_bak "$DOT_FILES_BASE/mac/.bash_profile" "$HOME/.bash_profile"
symlink_with_bak "$DOT_FILES_BASE/shared/.bashrc" "$HOME/.bashrc"

# TODO(ecarlin): Switch ctrl and alt modifier keys
# https://apple.stackexchange.com/questions/13598/updating-modifier-key-mappings-through-defaults-command-tool
# Keyboard - enable hold down key to repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# Keyboard - set a blazingly fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
# Finder - how all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Finder - show hidden files (not so hidden after all)
defaults write com.apple.finder AppleShowAllFiles YES
# Finder - show path bar
defaults write com.apple.finder ShowPathbar -bool true
# Finder - when performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# OS - disable resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Install homebrew
install_if_command_not_found "brew" "/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)""
# Install ack (a faster grep)
install_if_command_not_found "ack" "brew install ack"
# Install VS Code
install_if_command_not_found "code" "brew cask install visual-studio-code"

# Symlink vscode settings
readonly VSCODE_BASE="${DOT_FILES_BASE}/shared/VSCode"
readonly VSCODE_SETTINGS="${HOME}/Library/Application Support/Code/User"

symlink_with_bak "${VSCODE_BASE}/snippets" "${VSCODE_SETTINGS}/snippets"
symlink_with_bak "${VSCODE_BASE}/keybindings.json" "${VSCODE_SETTINGS}/keybindings.json"
symlink_with_bak "${VSCODE_BASE}/settings.json" "${VSCODE_SETTINGS}/settings.json"

read -r -d '' DESIRED_VSCODE_EXTENSIONS <<'EOF'
CoenraadS.bracket-pair-colorizer
eamodio.gitlens
esbenp.prettier-vscode
formulahendry.auto-close-tag
ms-vscode-remote.remote-containers
ms-vscode.cpptools
redhat.java
streetsidesoftware.code-spell-checker
vscodevim.vim
EOF
DESIRED_VSCODE_EXTENSIONS="$(echo "$DESIRED_VSCODE_EXTENSIONS" | sort)"

INSTALLED_VSCODE_EXTENSIONS="$(code --list-extensions | sort)"
VSCODE_EXTENSIONS_TO_UNINSTALL="$(echo $(diff --unchanged-line-format= --old-line-format= --new-line-format='%L' <(echo "$DESIRED_VSCODE_EXTENSIONS") <(echo "$INSTALLED_VSCODE_EXTENSIONS")) | sort)"
VSCODE_EXTENSIONS_TO_INSTALL="$(diff --unchanged-line-format= --old-line-format= --new-line-format='%L' <(echo "$INSTALLED_VSCODE_EXTENSIONS") <(echo "$DESIRED_VSCODE_EXTENSIONS"))"

[[ ! -z "$VSCODE_EXTENSIONS_TO_UNINSTALL" ]] && echo "Uinstalling VSCode extesnions: ${VSCODE_EXTENSIONS_TO_UNINSTALL}"
echo "$VSCODE_EXTENSIONS_TO_UNINSTALL" | xargs -n 1 code --uninstall-extension

[[ ! -z "$VSCODE_EXTENSIONS_TO_INSTALL" ]] && echo "Installing VSCode extesnions: ${VSCODE_EXTENSIONS_TO_INSTALL}"
echo "$VSCODE_EXTENSIONS_TO_INSTALL" | xargs -n 1 code --install-extension

#TODO(e-carlin): Figure out how to get this to bubble up so I don't have to manually run it
echo "Now run 'source ~/.bash_profile'"
