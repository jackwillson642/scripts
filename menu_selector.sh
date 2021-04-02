#!/bin/bash

choice=$(echo -e 'Display Configurations\nLock Menu\nApplication Selector\nCreate a Bash Script\nBluetooth Connector\nManual Launcher' | rofi -dmenu -i -p 'Which action would you like to perform?')

case $choice in
    Display\ Configurations)
        ~/scripts/display_dmenu.sh
        ;;

    Lock\ Menu)
        ~/scripts/lock_dmenu.sh
        ;;

    Application\ Selector)
        rofi -show drun
        ;;

    Create\ a\ Bash\ Script)
        ~/scripts/autoscript.sh
        ;;

    Bluetooth\ Connector)
        ~/scripts/bluetooth_connect.sh
        ;;

     Manual\ Launcher)
        ~/scripts/macho-gui.sh
        ;;

esac
