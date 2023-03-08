#!/bin/bash

# Install distro optimized software
packages='neovim micro nodejs git zsh chsh htop curl wget'
if [ -x "$(command -v apk)" ];			then sudo apk add --no-cache $packages
elif [ -x "$(command -v apt-get)" ];	then sudo apt-get install $packages
elif [ -x "$(command -v dnf)" ];		then sudo dnf install $packages
elif [ -x "$(command -v zypper)" ];		then sudo zypper install $packages
else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $packages">&2; 
fi


