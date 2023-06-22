#!/usr/bin/bash
# Ondřej Tuček 21.6.2023
# Shell script for fresh Linux install

function install_packages {
  packages='neovim nodejs git zsh chsh htop curl wget yarnpkg gcc g++ make'
  
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
}

function prepare_zsh {
  if [ $SHELL -ne '/usr/bin/zsh' ]; then
    chsh -s $(which zsh)
  fi

  # zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

  # zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

  # clone oh-my-zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # copy my zshrc
  cp -f ./.zshrc ~/

  echo A reboot/logout is required to apply changes.
}

function move_configs {
  cp -f .nanorc ~/
  cp -f .bashrc ~/

  # move configs
  cd ./.config 
  cp -f * ~/.config

  # move fonts
  cd ../.fonts

  if [ -d "~/.fonts" ]; then
    mkdir ~/.fonts
  fi

  cp -f * ~/.fonts

  cd ..
}

function main {
  install_packages
  move_configs
  prepare_zsh
}

main