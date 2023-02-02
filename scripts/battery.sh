#!/bin/sh

percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage/{print $2}' | sed 's/%//')
state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/state/{print $2}')

if [ ${percentage} -lt 90 ]; then
    icon=""
elif [ ${percentage} -lt 70 ]; then
    icon=""
elif [ ${percentage} -lt 50 ]; then
    icon=""
elif [ ${percentage} -lt 30 ]; then
    icon=""
elif [ ${percentage} -lt  10 ]; then
    icon=""
fi

if [ "${state}" == "charging" ]; then
    echo " ${icon} ${percentage}%"
else
    echo "${icon} ${percentage}%"
fi
