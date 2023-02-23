# Remind me of OMZ updates 
zstyle ':omz:update' mode reminder

# Check for updates every 14th day
zstyle ':omz:update' frequency 14

# Agnoster is the best
ZSH_THEME="agnoster"


export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Use nano for ssh session and micro for local
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='micro'
fi

# Aliases
alias gaA="git add -A"
alias gcm="git commit -m"
alias gc="git commit"
alias gf="git fetch"

alias cls="clear && ls"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Styling my auto-suggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#15db68,bold"

# Try to find first suggestion from my ZSH_HISTORY
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Disable suggestions for large files
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
