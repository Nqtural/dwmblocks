#!/bin/sh

temp=$(sensors | awk '/Core 0/ {printf ("%.0f\n", ($3))}' | sed 's/+//')

if [ ${temp} -ge 90 ]; then
    echo " ${temp}°"
elif [ ${temp} -ge 70 ]; then
    echo " ${temp}°"
elif [ ${temp} -ge 50 ]; then
    echo " ${temp}°"
elif [ ${temp} -ge 25 ]; then
    echo " ${temp}°"
else
    echo " ${temp}°"
fi
