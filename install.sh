#!/bin/bash

# Create symbolic links
ln -sf $(pwd)/bashrc ~/.bashrc
ln -sf $(pwd)/gitconfig ~/.gitconfig
ln -sf $(pwd)/bash_aliases ~/.bash_aliases
ln -sf $(pwd)/prompt.sh ~/.prompt.sh

# Source the bashrc file
source ~/.bashrc

echo "Dotfiles installation complete!" 