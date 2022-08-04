#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if command -v nvidia-settings
then
    nvidia-settings --load-config-only # load brightness settings
fi

# startup.sh
# run if not running
run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

# instant commands - not daemons
polybar-msg cmd quit                   # close all polybars
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

# exec penrose_config 2> /tmp/penrose.log 1> /tmp/penrose.log
# exec "$SOURCE_INSTALLS"/penrose_config/target/debug/penrose_config 2> /tmp/penrose.log 1> /tmp/penrose.log # for debugging
# exec startlxqt
exec dwm
