# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/home/skirsu/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="duellj"

plugins=(
	git
	zsh-autosuggestions
	web-search
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# aliases
# update this file
alias zshup='wget -O $HOME/.zshrc https://raw.githubusercontent.com/AmazedWolf900/dotfiles/main/.zshrc'

# general aliases
alias c='clear'
alias p='pwd'
alias s='sudo'
alias n='nano'
alias v="vim"
alias apt="nala"

# Linux specific
if [ "$(uname -s)" = "Linux" ]; then
	# systemctl systemd
	alias sctl='sudo systemctl status'
	alias sctls='sudo systemctl start'
	alias sctlr='sudo systemctl restart'
	alias sctld='sudo systemctl stop'
fi

# docker & compose
alias dl='docker ps'
alias dc='docker compose'
alias dcu='docker compose up'
alias dcup='docker compose up -d'
alias dcd='docker compose down'
alias dcdv='docker compose down --volumes'
alias dcp='docker compose pull'
alias dcl='docker compose logs --follow'

# exa aliases
alias ls='eza -aF --icons'
alias ll='eza -laF --icons'

# directories
# make dir and cd into it
mkcd() {
	local dir="$*";
	mkdir -p "$dir" && cd "$dir";
}
# delete directory
alias rmd='rm -rf'

# external services
alias myip='curl https://api.ipify.org'
alias myip6='curl https://api64.ipify.org'
