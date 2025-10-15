#!/bin/sh

# Location of link to wallpaper link.
bgloc="${XDG_DATA_HOME:-$HOME/.local/share/}/background"

trueloc="$(readlink -f "$1")" &&
case "$(file --mime-type -b "$trueloc")" in
    image/*)
        ln -sf "$(readlink -f "$1")" "$bgloc" &&
            notify-send -i "$bgloc" "Setting wallpaper..."
        ;;
    inode/directory)
        ln -sf "$(find "$trueloc" -iregex '.*.\(jpg\|jpeg\|png\|gif\)' -type f | shuf -n 1)" "$bgloc" &&
            notify-send -i "$bgloc" "Random Wallpaper chosen."
        ;;
    *)
       notify-send "Error" "Not a valid image." ; exit 1
       ;;
esac

if [ ! -z "$2" ]; then
    feh $2 "$bgloc"
else

    img_w="$(feh -L '%w' "$bgloc")"
    img_h="$(feh -L '%h' "$bgloc")"

    if [ $img_w -eq $img_h ] || [ $img_w -lt 800 ] || [ $img_h -lt 800 ]; then
        
        feh --bg-tile "$bgloc"
        
    elif [ $img_w -lt 1920 ] || [ $img_h -lt 1200 ]; then
        
        feh --bg-fill "$bgloc"
        
    else
        
        feh --bg-center "$bgloc"
    fi
fi
