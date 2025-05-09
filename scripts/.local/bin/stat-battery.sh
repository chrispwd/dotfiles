#!/bin/sh

# outputs=$(xrandr --query | grep " connected" | cut -d" " -f1)
# test2=""
# test3="35"
# for test in $outputs; do
#     printf "[%s %s%d%%] " "$test" "$warn" "$test3"; unset test2
# done && printf "\\n"

[ ! -h /sys/class/power_supply/BAT0 ] && exit 0
# Loop through all attached batteries and format the info
for battery in /sys/class/power_supply/BAT?*; do
	# If non-first battery, print a space separator.
	[ -n "${capacity+x}" ] && printf " "
	# Sets up the status and capacity
        batname="$(basename $battery)"
	case "$(cat "$battery/status" 2>&1)" in
		"Full") status="$batname " ;;
		"Discharging") status="-$batname " ;;
		"Charging") status="+$batname " ;;
		"Not charging") status="$batname " ;;
		"Unknown") status="?$batname ️" ;;
		*) echo "$(cat "$battery/status")" && exit 1 ;;
	esac
	capacity="$(cat "$battery/capacity" 2>&1)"
	# Will make a warn variable if discharging and low
	[ "$status" = "-$batname " ] && [ "$capacity" -le 25 ] && warn="!"
	# Prints the info
	printf "[%s%s%d%%]" "$status" "$warn" "$capacity"; unset warn
done && printf "\\n"
