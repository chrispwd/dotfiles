#!/bin/sh

# xinitrc runs automatically when you run startx.

# There are some small but important commands that need to be run when we start
# the graphical environment. There is a link to this file in ~/.xprofile
# because that file is run automatically if someone uses a display manager
# (login screen) and so they are needed there. To prevent doubling up commands,
# I source them here with the line below.

if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}/X11/Xresources.d" ]; then
    [ -f ~/.Xresources ] && xrdb -merge -I${HOME}/.config/X11 ~/.Xresources
else
    [ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
fi

if [ -f "${XDG_CONFIG_HOME:-$HOME/.config}/X11/xprofile" ]; then
	. "${XDG_CONFIG_HOME:-$HOME/.config}/X11/xprofile"
else
	[ -f ~/.xprofile ] && . ~/.xprofile
fi


# wm
#exec bspwm 2> /tmp/bspwm-log
#exec icewm-session
# while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
# do
#     sleep 1
# done &
#while type dwm >/dev/null ; do dwm && continue || break ;done
#exec i3
# exec fvwm3
exec cwm
#exec dwm
