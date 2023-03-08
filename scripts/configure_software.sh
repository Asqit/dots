#!/bin/bash

# 1) Terminal configuration
if [ $SHELL != "/usr/bin/zsh" ] then 
	chsh -s $(which zsh)
fi

# clone oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# 2) Yarn package manager
sudo npm i -g corepack
corepack prepare yarn@stable --activate

printf("Almost done...\n\rBefore running \"post_config.sh\" please run zsh for first time and select 0");
