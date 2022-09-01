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



# ME ME ME


# run if not running
run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

# PLATFORM SPECIFIC


# load brightness settings
if command -v nvidia-settings
then
    nvidia-settings --load-config-only 
fi

if command -v discord
then
    run discord --start-minimized
fi

if command -v imwheel
then
    run imwheel
fi




"$HOME"/.fehbg                         # reload wallpaper

run picom -b       # compositor
run sxhkd          # hotkey daemon

# exec startlxqt
exec i3
