#  ▄███████▄     ▄████████    ▄█    █▄
# ██▀     ▄██   ███    ███   ███    ███
#       ▄███▀   ███    █▀    ███    ███
#  ▀█▀▄███▀▄▄   ███         ▄███▄▄▄▄███▄▄
#   ▄███▀   ▀ ▀███████████ ▀▀███▀▀▀▀███▀
# ▄███▀                ███   ███    ███
# ███▄     ▄█    ▄█    ███   ███    ███
#  ▀████████▀  ▄████████▀    ███    █▀


# Path to oh-my-zsh installation.

export ZSH=$HOME/.oh-my-zsh

# Theme

source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
ZSH_THEME="agnoster"

# Plugins

plugins=(git node npm yarn)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# SSH

export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias d="cd ~/Dev/"
alias e="vim"

# Fonts

if [[ -r /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
fi

