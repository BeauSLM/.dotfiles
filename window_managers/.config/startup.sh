#!/bin/sh

# run if not running
run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

# instant commands - not daemons
polybar-msg cmd quit # close all polybars
nvidia-settings --load-config-only # load brightness settings
"$HOME"/.fehbg # reload wallpaper

for m in $(polybar --list-monitors | sed 's/ //g'); do
  n=$(echo "$m" | cut -d ":" -f1)
  if echo "$m" | grep -q "primary"
  then
    bar="tray"
    log="/polybar_tray.log"
  else
    bar="normal"
    log="/polybar_normal.log"
  fi
  MONITOR=$n polybar -r "$bar" 2>&1 | tee -a /tmp/"$log" &
done

run dunst
run picom -b
run sxhkd
run imwheel
run nm-applet
run copyq
