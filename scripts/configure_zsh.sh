# Name: configure_zsh.sh
# Author: Ondřej Tuček 16.9.2023
# script that will configure ZSH to my liking if installed

function install_omz {
	# clone oh-my-zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	# zsh-autosuggestions
	git clone "https://github.com/zsh-users/zsh-autosuggestions.git" "$HOME/.oh-my-zsh/plugins/zsh-autosuggestions"
	
	# zsh-syntax-highlighting
	git clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"
}


function change_shell {
	local zsh_install="$(which zsh)"

	# check if zsh is installed
	if ! [ "$zsh_install" ]; then
		echo "ZSH is not installed."
		exit 1
	fi


	# Check for dependency
	if ! [ -x "$(command -v chsh)" ]; then
	   echo "Failed to find \"chsh\" program"
	   exit 1
	 fi

	# Change shell
	if [ "$SHELL" != "$zsh_install" ]; 
	then
		chsh -s "$zsh_install"
	fi


	# Install Oh-my-zsh
	install_omz
}


change_shell
