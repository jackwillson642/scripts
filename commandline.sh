#!/bin/bash

# choice=$(echo -e '' | rofi -theme ~/.config/rofi/themes/dmenu -dmenu -i -p ':')
# $choice

### Display command history as menu
file='.bash_history'

i=1

while read line
do
  menustring+="${line}\n"

  i=$((i+1))
done < $file

choice=$(echo -e $menustring | rofi -dmenu -i -p':')
$choice
