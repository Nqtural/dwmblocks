#!/bin/sh

case "$(playerctl status)" in
    "Playing")
        echo " $(playerctl metadata --format "{{artist}} — {{title}}")";;

    "Paused")
        echo " $(playerctl metadata --format "{{artist}} — {{title}}")";;

    "No players found")
        echo " No players";;
esac
