set -eou pipefail

echo "Setting up Linux env"

# Add sourcing of custom .bashrc to existing .bashrc
if grep -xq "source $HOME\/code\/\.files\/linux\/\.bashrc" ~/.bashrc
then
    echo "Sourcing of my custom .bashrc already present in system .bashrc. Not adding."
else
    echo "Adding sourcing of my custom .bashrc to system .bashrc"
    echo -e "\n\n# My custom .bashrc" >> ~/.bashrc
    echo "source ${DOT_FILES_BASE}/linux/.bashrc" >> ~/.bashrc
fi

# Add script to center window
cp "$DOT_FILES_BASE/bin/center-window" "$HOME/bin"

echo "Now run source ~/.bashrc"
