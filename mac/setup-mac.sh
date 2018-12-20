set -eou pipefail

echo "Setting up Mac env"

symlink_dot_file "mac" ".bash_profile"

# Enable hold down key to repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

#TODO: Figure out how to get this to bubble up so I don't have to manually run it
echo "Now run 'source ~/.bash_profile'"