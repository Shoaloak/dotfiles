#!/bin/sh

# source .Xresources
[[ -f ~/.Xresources ]] && xrdb -I$HOME/.xres-scripts -merge ~/.Xresources

feh --bg-scale ~/.wallpaper.jpg &
xsetroot -cursor_name left_ptr &
sxhkd &
exec bspwm
