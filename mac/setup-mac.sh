set -ou pipefail # No set -e. I believe the read below fails with it

echo "Setting up Mac env"

symlink_dot_file "mac" ".bash_profile"
symlink_dot_file "mac" ".bashrc"

# TODO(ecarlin): Switch ctrl and alt modifier keys
# https://apple.stackexchange.com/questions/13598/updating-modifier-key-mappings-through-defaults-command-tool

# Enable hold down key to repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Show hidden files (not so hidden after all)
defaults write com.apple.finder AppleShowAllFiles YES

# Install homebrew
command -v brew >/dev/null 2>&1  ||  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install ack (a faster grep)
command -v ack >/dev/null 2>&1 || brew install ack

# Install VS Code
command -v code 2>/dev/null ||  brew cask install visual-studio-code

# Symlink vscode settings
VSCODE_BASE="${DOT_FILES_BASE}/shared/VSCode"
VSCODE_SETTINGS="${HOME}/Library/Application Support/Code/User"
ln -sf "${VSCODE_BASE}/snippets" "${VSCODE_SETTINGS}/snippets"
ln -sf "${VSCODE_BASE}/keybindings.json" "${VSCODE_SETTINGS}/keybindings.json"
ln -sf "${VSCODE_BASE}/settings.json" "${VSCODE_SETTINGS}/settings.json"

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
for extension in $VSCODE_EXTENSIONS_TO_UNINSTALL
do
   code --uninstall-extension "${extension}"
done

[[ ! -z "$VSCODE_EXTENSIONS_TO_INSTALL" ]] && echo "Installing VSCode extesnions: ${VSCODE_EXTENSIONS_TO_INSTALL}"
for extension in $VSCODE_EXTENSIONS_TO_INSTALL
do
   code --install-extension "${extension}"
done

#TODO(e-carlin): Figure out how to get this to bubble up so I don't have to manually run it
echo "Now run 'source ~/.bash_profile'"
