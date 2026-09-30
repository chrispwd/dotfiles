#!/bin/sh

# xinitrc runs automatically when you run startx.

# load the presence of any default scripts
xinitdir="/etc/X11/xinit"
if [ -d "$xinitdir"/xinitrc.d ] ; then
	for f in "$xinitdir/xinitrc.d"/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

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

# Pass wm name as arg to script to specify wm-specific programs
startup "$WMNAME"
# exec i3
# exec wmaker
# exec fvwm3
# startup
exec cwm
# exec dwm
# run icewm-session without icewmbg (prefer feh)
# exec icewm-session --nobg
