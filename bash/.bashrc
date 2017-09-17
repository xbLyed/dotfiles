#
# ~/.bashrc
#

# ================================================
# Default settings
# ================================================

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Paths for custom bins and scripts
if [ -d "$HOME/.bin" ] ; then
  PATH="$PATH:$HOME/.bin"
fi

# Load variables
source /etc/environment

# ================================================
# Aliases
# ================================================

# Common commands
alias c="clear"
alias v="vim"
alias n="nano"
alias t="_zsh_tmux_plugin_run -2"
alias p2="sudo pip2 install"
alias p3="sudo pip3 install"

# Programas o scripts
alias tiempo="curl wttr.in/Sevilla"
# alias signal="$HOME/Descargas/signal-cli-0.5.6/bin/./signal-cli" # Desactivar si se añade a $HOME/.bin

# Folders and config files
alias d="cd ~/dotfiles"
alias ls='ls --color=auto'
alias xup="xrdb ~/.Xresources"

# ================================================
# Exports
# ================================================

# PS1, BROWSER AND EDITOR
PS1='[\W]\$ '
BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/nano

# Color from wpgtk
wpg -t

# Neofetch
if [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; then
  true
else
  neofetch --w3m --source /home/xblyed/Descargas/fsociety-icon.png --crop_offset=center --image_size 45%
fi
