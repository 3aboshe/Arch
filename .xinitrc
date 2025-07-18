#!/bin/sh
# ~/.xinitrc
# Start-up script for X sessions

# Merge system-wide and user X resources, if present
[ -f /etc/X11/xinit/xinitrc.d/00-system-resources.sh ] && . /etc/X11/xinit/xinitrc.d/00-system-resources.sh
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# Set background (optional—requires feh)
# feh --bg-scale ~/Pictures/your-wallpaper.jpg &

# Start a compositor (optional—requires picom)
picom --config ~/.config/picom/picom.conf &

# Start a status bar (optional—requires polybar)
# polybar mybar &

# Launch any other background programs here:
# nm-applet &           # NetworkManager tray icon
# volumeicon &          # Volume control tray icon
# udiskie &             # Auto-mount removable media

# Finally, start the window manager
exec i3
