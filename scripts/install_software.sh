#!/bin/bash
# Name: install_software.sh
# Author: Ondřej Tuček 16.9.2023
# Simple cross-distro script for installing bin. packages

function evaluate_manager_install_cmd {
    local manager

    if [ -x "$(command -v apk)" ]; then 
      manager="apk add --no-cache"
    elif [ -x "$(command -v apt-get)" ]; then 
      manager="apt-get install"
    elif [ -x "$(command -v dnf)" ]; then 
      manager="dnf install"
    elif [ -x "$(command -v zypper)" ]; then 
      manager="zypper install"
    else 
        echo "FAILED TO DIFFERENTIATE THE PACKAGE MANAGER"
        exit 1
    fi    

    echo "$manager"
}

function install_package {
    local package="$1"
    local password="$2"
    local manager
    manager="$(evaluate_manager_install_cmd)"

    local output    
    output=$(echo "$password" | sudo -S $manager $package)

    if [ $? -eq 0 ]; then
        echo "Installed $package successfully"
    else 
        echo "Failed to install $package"
    fi
}

function install_packages {
    local packages="$1"

    echo "[sudo] password for $USER:"
    read -s password 
    
    for package in $packages; do 
        install_package "$package" "$password"
    done
}

if [ "$1" ]; then 
    install_packages "$1"
else
    install_packages 'neovim nodejs git zsh chsh htop curl wget gcc g++ cc' 
fi
