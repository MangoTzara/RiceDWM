#!/bin/sh

# Prints the current volume or 🔇 if muted.

case $BLOCK_BUTTON in
	1) setsid -f "$TERMINAL" -e pavucontrol ;;
	2) pactl set-sink-mute @DEFAULT_AUDIO_SINK@ toggle ;;
	4) pactl set-sink-volume @DEFAULT_AUDIO_SINK@ +1% ;;
	5) pactl set-sink-volume @DEFAULT_AUDIO_SINK@ -1% ;;
	3) notify-send "📢 Volume module" "\- Shows volume 🔊, 🔇 if muted.
- Middle click to mute.
- Scroll to change." ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

vol=$(pactl list sinks | awk '/Volume:/{i++}i==1' | awk -F/ '{print $2}' | tr -d '[:space:]')

# If muted, print 🔇 and exit.
[ "$vol" = "0%" ] && echo 🔇 && exit

vol="${vol%\%}"

case 1 in
	$((vol >= 70)) ) icon="🔊" ;;
	$((vol >= 30)) ) icon="🔉" ;;
	$((vol >= 1)) ) icon="🔈" ;;
	* ) echo 🔇 && exit ;;
esac

echo "$icon$vol%"
