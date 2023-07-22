#!/bin/sh

battery_info=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)

# Extract battery percentage
battery_percentage=$(echo "$battery_info" | awk '/percentage:/ { print $2 }')

# Extract charging status
charging_status=$(echo "$battery_info" | awk '/state:/ { print $2 }')

# Print battery percentage and charging status
printf "%s %s" "$battery_percentage" "$charging_status"
