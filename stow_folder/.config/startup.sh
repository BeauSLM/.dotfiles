#!/bin/sh

# run if not running
run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

# instant commands - not daemons
polybar-msg cmd quit                   # close all polybars
nvidia-settings --load-config-only     # load brightness settings
"$HOME"/.fehbg                         # reload wallpaper

# IFS='<line feed>'
IFS='
'
for m in $(polybar --list-monitors); do
  n=$(echo "$m" | cut -d ":" -f1)
  if echo "$m" | grep -q "primary"
  then
    bar="tray"
    logfile="/polybar_tray.log"
  else
    bar="normal"
    logfile="/polybar_normal.log"
  fi
  MONITOR=$n polybar -r "$bar" 2>&1 | tee -a /tmp/"$logfile" &
done

run dunst          # notifications
run picom -b       # compositor
run sxhkd          # hotkey daemon
run imwheel        # scrollwheel improvements
run nm-applet      # network manager tray icon
run copyq          # cool clipboard thing that I'd honestly like to get rid of
