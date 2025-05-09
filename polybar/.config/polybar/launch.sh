#!/bin/sh

killall -q polybar

#while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

if [ "$(uname -n)" == "meep" ]; then
    mount='/home'
else
    mount='/'
fi

outputs=$(xrandr --query | grep " connected" | cut -d" " -f1)

for m in $outputs ; do
    MONITOR=$m MOUNTPOINT=$mount polybar --reload mybar > ~/.cache/polybar/$m.log 2>&1 &
done
