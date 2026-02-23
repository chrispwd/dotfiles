#!/bin/sh

########################## XDG DIRS ####################################

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

########################## DEFAULTS ####################################

export XINITRC="$HOME/.xinitrc"
export XPROFILE_LOCAL="$HOME/.xprofile_$(hostname)"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export SAVEHIST=10000
#export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export CWMRC="$HOME/.cwmrc"
export WMNAME="cwm"
export DESKTOP="$HOME/Desktop"
export DOCUMENTS="$HOME/Documents"
export DOWNLOADS="$HOME/Downloads"
export DOTFILES="$HOME/dotfiles"
export NOTES="$HOME/Notes/denote"
export SYNC="$HOME/Sync"
export SCROTS="$HOME/Sync/Pictures/scrots"
# export BROWSER="firefox"
export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK_THEME="Nexto Dark"
export MY_MONO_FONT="Aporetic Sans Mono"
export COLOR_FG="#a7aab0"
export COLOR_BG="#232326"
export COLOR_SEL_FG="#dce0e6"
export COLOR_SEL_BG="#57a5e5"
export LS_COLORS="di=34:ln=36:so=32:pi=33:ex=32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export MYDMENUOPTS="-fn '${MY_MONO_FONT:-monospace}-12' -nb '${COLOR_BG}' -nf '${COLOR_FG}' -sf '${COLOR_SEL_FG}' -sb '${COLOR_SEL_BG}'"

# Default programs
export EDITOR="emacs -nw"
export ALTERNATE_EDITOR="vim"

# machine-specific profiles
local_profile="$HOME/.profile_$(hostname)"

[ -f "$local_profile" ] && . $local_profile

########################## PATH ########################################

# Go
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"

# PATH 
export PATH="$GOBIN:/opt/homebrew/bin:/bin:/sbin:/usr/local/sbin/:/usr/local/bin:/usr/bin:$HOME/.local/bin:$HOME/.emacs.d/bin:$HOME/.local/bin/fnm:$HOME/.cargo/bin:$PYENV_ROOT/bin:$PATH"

# zoxide
export _ZO_DATA_DIR=${XDG_DATA_HOME:-$HOME/.local/share}
