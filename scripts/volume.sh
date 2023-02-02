#!/bin/sh

volume=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master) | sed 's/%//')

if [ $(pacmd list-sinks | awk '/muted/ { print $2 }' | sed -n \$p) == "yes" ]; then
    echo ""
elif [ ${volume} -eq 0 ]; then
    echo " ${volume}%"
elif [ ${volume} -lt 50 ]; then
    echo " ${volume}%"
else
    echo " ${volume}%"
fi
