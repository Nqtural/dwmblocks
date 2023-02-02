#!/bin/sh

volume=$(pulseaudio-ctl status | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g" | awk '/Volume/{print $4}')

if [ "$(pulseaudio-ctl status | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g" | awk '/sink muted/{print $5}')" == "yes" ]; then
    echo ""
elif [ ${volume} -eq 0 ]; then
    echo " ${volume}%"
elif [ ${volume} -lt 50 ]; then
    echo " ${volume}%"
else
    echo " ${volume}%"
fi
