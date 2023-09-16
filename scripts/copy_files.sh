#!/usr/bin/bash

# Move up
cd ..

# Move fonts 
cp -rfv .fonts/ ~/

# Move zsh configuration
cp -fv ../.zshrc ~/

# Move all .config files
cd ./.config
cp * ~/.config/

# Move other .files
cd ..
cp -fv .nanorc ~/

# Move theme files
cp -r .themes ~/
cp -r .icons ~/

tar -xf ~/.themes/*.tar.gz
tar -xf ~/.icons/*.tar.gz

rm ~/.themes/*.tar.gz
rm ~/.icons/*.tar.gz

printf("Themes were moved to \".themes\" and \".icons\"\n\rPlease verify their installations");
