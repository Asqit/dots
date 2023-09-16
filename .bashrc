# Andrew Tuček's .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# Append deno to user's $PATH if installed
DENO_INSTALL="$HOME/.deno"
if [ -d "$DENO_INSTALL" ]; then
	PATH="$DENO_INSTALL/bin:$PATH"
fi


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

# Custom syntax for $PS1 variable (command prompt)
PS1="┌[\e[1m\u@\w  \A\e[0m]\n\r└» "

# Source rust support if exists
CARGO_PATH="$HOME/.cargo/env"
if [ -d "$CARGO_PATH" ]; then
	. $CARGO_PATH
fi

export PATH
