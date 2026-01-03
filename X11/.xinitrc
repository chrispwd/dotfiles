#!/bin/sh

# xinitrc runs automatically when you run startx.

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

# configures monitors via xrandr prior to starting the wm
startup
exec fvwm3
# exec cwm
# exec dwm
# run icewm-session without icewmbg (prefer feh)
# exec icewm-session --nobg
