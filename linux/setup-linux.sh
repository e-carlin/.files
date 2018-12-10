set -eou pipefail

echo "Setting up Linux env"
DOT_FILES_BASE="${HOME}/code/.files"
if grep -xq "source $HOME\/code\/\.files\/linux\/\.bashrc" ~/.bashrc
then
    echo "Sourcing of my custom .bashrc already present in system .bashrc. Not adding."
else
    echo "Adding sourcing of my custom .bashrc to system .bashrc"
    echo -e "\n\n# My custom .bashrc" >> ~/.bashrc
    echo "source ${DOT_FILES_BASE}/linux/.bashrc" >> ~/.bashrc
fi

echo "Now run source ~/.bashrc"