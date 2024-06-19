#!/bin/bash
echo "Fetching packer and placing it in your .local/share"

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

if [[ $(pacman -Q npm) ]]; then
echo "npm present"
else
    echo "install npm first"
    exit
fi

echo "now start nvim... hop past all the errors and run :PackerSync"

