#!/bin/bash
tmpbg='/tmp/lockscreen.png' 
icon='/home/jack/pictures/icons/lock_icon.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"


i3lock -u -i "$tmpbg"
