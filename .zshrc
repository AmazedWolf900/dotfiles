# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/home/skirsu/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="duellj"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# aliases
# general aliases
alias c='clear'
alias p='pwd'
alias s='sudo'
alias n='nano'

# exa aliases
alias ls='exa -aF --icons'
alias ll='exa -laF --icons'

# directories
# make dir and cd into it
mkcd() {
	local dir="$*";
	mkdir -p "$dir" && cd "$dir";
}
# delete directory
alias rmd='rm -r'

# external services
alias myip='curl icanhazip.com'
