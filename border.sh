#!/bin/bash

choice=$(echo -e '' | rofi -theme ~/.config/rofi/themes/dmenu -dmenu -i -p 'Enter border width: ')

i3-msg border pixel$choice
notify-send "border "$choice"px"

