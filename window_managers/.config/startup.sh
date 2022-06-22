#!/bin/sh

# run if not running
run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}


polybar-msg cmd quit # close all polybars
nvidia-settings --load-config-only # load brightness settings
"$HOME"/.fehbg # reload wallpaper

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar &
done

run dunst
run picom -b
run sxhkd
run imwheel
run nm-applet
run copyq
