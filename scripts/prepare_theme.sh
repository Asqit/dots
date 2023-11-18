#!/bin/bash
# Name: prepare_theme.sh
# Author: Ondřej Tuček 16.11.2023
# script that will extract icons & themes and moves them into $HOME


function move_assets {
    local archive=$1
    local destination=$2

    if [ ! -d "$destination" ]; then
        mkdir "$destination"
    fi

    local target=$(basename "$archive" .zip)

    unzip "$archive"

    mv "$target/*" "$destination"
}


function init {
    if ! [ -x "$(command -v unzip)" ]; then
	echo "Failed to find \"unzip\" program"
	exit 1
    fi
    
    
    cd ../themes
    
    
    move_assets "theme.zip" "$HOME/.themes"
    move_assets "icon.zip" "$HOME/.icons"
}


echo "THEMES_ARE_YET_TO_BE_FINISHED"
echo "EXITING WITHOUT THE THEMES"