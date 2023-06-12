#!/usr/bin/bash

# Install distro optimized software
packages='neovim nodejs git zsh chsh htop curl wget yarnpkg gcc g++'
if [ -x "$(command -v apk)" ]; then 
  sudo apk add --no-cache $packages
elif [ -x "$(command -v apt-get)" ]; then 
  sudo apt-get install $packages
elif [ -x "$(command -v dnf)" ]; then 
  sudo dnf install $packages
elif [ -x "$(command -v zypper)" ]; then 
  sudo zypper install $packages
else 
  echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $packages">&2; 
fi


