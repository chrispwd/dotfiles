#!/bin/sh

########################## XDG DIRS ####################################

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

########################## DEFAULTS ####################################

export XINITRC="$HOME/.xinitrc"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export SAVEHIST=10000
#export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export CWMRC="$HOME/.cwmrc"
export DESKTOP="$HOME/Desktop"
export DOCUMENTS="$HOME/Documents"
export DOWNLOADS="$HOME/Downloads"
export DOTFILES="$HOME/dotfiles"
export NOTES="$HOME/Notes/denote"
export SYNC="$HOME/Sync"
export SCROTS="$HOME/Sync/Pictures/scrots"
# export BROWSER="firefox"
export MY_MONO_FONT="BlexMono Nerd Font"
export COLOR_FG="#acafad"
export COLOR_BG="#2d2d2d"
export MYDMENUOPTS="-fn '${MY_MONO_FONT:-monospace}-12:Italic' -nb '${COLOR_BG}' -nf '${COLOR_FG}' -sf '${COLOR_BG}' -sb '${COLOR_FG}'"

# Default programs
export EDITOR="emacs -nw"
export ALTERNATE_EDITOR="vim"

if [ $(uname -o) = "GNU/Linux" ]; then
    export TERMINAL="st"
    # Net interfaces
    export NETINTF="$(ls /sys/class/ieee80211/*/device/net/)"
else
    export TERMINAL="kitty"
fi

########################## PATH ########################################

# Go
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"

# PATH 
export PATH="$PATH:$GOBIN:/bin:/sbin:/usr/local/sbin/:/usr/local/bin:/usr/bin:$HOME/.local/bin:$HOME/.emacs.d/bin:$HOME/.local/bin/fnm:$HOME/.cargo/bin:$PYENV_ROOT/bin:/opt/homebrew/bin"

# zoxide
export _ZO_DATA_DIR=${XDG_DATA_HOME:-$HOME/.local/share}
