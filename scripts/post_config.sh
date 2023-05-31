#!/bin/bash

# Move fonts 
cp -r .fonts ~/

# Move zsh configuration
rm ~/.zshrc 
cp ../.zshrc ~/

# Move all .config files
cd ../.config
cp * ~/.config

# Move other .files
cd ..
cp .nanorc ~/

# Move theme files
mv .themes ~/
cp .icons ~/

tar -xf ~/.themes/*.tar.gz
tar -xf ~/.icons/*.tar.gz

rm ~/.themes/*.tar.gz
rm ~/.icons/*.tar.gz

printf("Themes were moved to \".themes\" and \".icons\"\n\rPlease verify their installations");
