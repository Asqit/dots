#!/usr/bin/bash
# Name: copy_files.sh
# Author: Ondřej Tuček 18.11.2023
# plain simple, copy files from dots to destinations


# moving things from root of the repo
cd ..               
cp ./.basrc ~/
cp ./.zshrc ~/
cp ./.nanorc ~/

# move all configs
cd ./.config
cp -rf * ~/.config