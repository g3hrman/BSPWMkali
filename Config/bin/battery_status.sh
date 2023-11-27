#!/bin/sh

battery_level="$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk 'NF{print $NF}'| tr -d '%')"

if [ $battery_level -ge 81 ] && [ $battery_level -le 100 ]; then
  echo "%{F#46ff33}ï‰€ %{F#ffffff}$battery_level%%{u-}"
elif [ $battery_level -ge 41 ] && [ $battery_level -lt 81 ]; then
  echo "%{F#00ca9c}ï‰‚ %{F#ffffff}$battery_level%%{u-}"
elif [ $battery_level -ge 21 ] && [ $battery_level -lt 41 ]; then
  echo "%{F#fff402}ï‰ƒ %{F#ffffff}$battery_level%%{u-}"
else
  echo "%{F#ff0202}ï‰„ %{F#ffffff}$battery_level%%{u-}"
fi
