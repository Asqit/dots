#!/bin/bash

# Move zsh configuration
rm ~/.zshrc 
mv ../.zshrc ~/

# Move all .config files
cd ../.config
mv --force * ~/.config

# Move other .files
cd ..
mv .nanorc ~/

# Move theme files
mv .themes ~/
mv .icons ~/

tar -xf ~/.themes/*.tar.gz
tar -xf ~/.icons/*.tar.gz

rm ~/.themes/*.tar.gz
rm ~/.icons/*.tar.gz

printf("Themes were moved to \".themes\" and \".icons\"\n\rPlease verify their installations");

# Install packer, neovim package manager.
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
