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

# Load variables, aliases, etc
source /etc/environment
source $HOME/.aliases

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
