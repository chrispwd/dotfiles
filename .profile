#!/bin/sh

########################## XDG DIRS ####################################

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

########################## DEFAULTS ####################################

export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
export HISTSIZE=10000
export SAVEHIST=10000

# wm
export CWMRC="${XDG_CONFIG_HOME:-$HOME/.config}/cwm/.cwmrc"

# Default programs
export EDITOR="emacsclient -nw"
export ALTERNATE_EDITOR="emacs -nw --init-directory $HOME/.config/mimemacs"

if [ $(hostname) = "meep" ]; then
    export TERMINAL="st"
else
    export TERMINAL="kitty"
fi

export BROWSER="firefox"
export SCROTS="$HOME/Sync/Resources/scrots"

########################## PATH ########################################

# Go
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"

# PATH 
export PATH="$PATH:$GOBIN:/bin:/sbin:/usr/local/sbin/:/usr/local/bin:/usr/bin:$HOME/.local/bin:$HOME/.emacs.d/bin:$HOME/.local/bin/fnm:/usr/local/opt/postgresql@13/bin:$HOME/.rbenv/bin:$HOME/.cargo/bin:$PYENV_ROOT/bin"

# other stupid env crap that clutters up my dotfiles

# pkg-config (needed for postgresql@13 for brightfunds)
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@13/lib/pkgconfig"

# zoxide
export _ZO_DATA_DIR=${XDG_DATA_HOME:-$HOME/.local/share}