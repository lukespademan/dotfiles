#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
#[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
convert ~/.config/i3/lock/lock.png -scale 33% /tmp/lock-icon.png
convert /tmp/screen.png /tmp/lock-icon.png -gravity center -composite /tmp/screen.png
#i3lock -u -i /tmp/screen.png
i3lock -eufc 000000 -i /tmp/screen.png

rm /tmp/screen.png
