#!/bin/bash

choice=$(echo -e '1.Lock-Fancy\n2.Lock\n3.Lock-Suspend\n4.Shutdown\n5.Reboot\n6.Exit i3' | rofi -dmenu -p 'Which action do you wish to perform?' -i)
case $choice in
    1.Lock\-Fancy)
        notify-send 'Locking fancy in 3sec' --urgency low
        i3lock-fancy
        ;;

    2.Lock)
        notify-send 'Lock normal' --urgency low
        i3lock -ef -i ~/pictures/wallpapers/png/batman-joker.png -t
        ;;

    3.Lock-Suspend)
        notify-send 'Lock normal and suspending' --urgency low
        i3lock -ef -i ~/pictures/wallpapers/png/batman-joker.png -t && systemctl suspend
        ;;

    4.Shutdown)
        ans=$(echo -e 'No\nYes' | rofi -dmenu -p 'Are you sure' -i)
        if [ $ans = 'Yes' ]
        then
            notify-send 'Shutdown in 1 min. 
Run "shutdown -c" to cancel shutdown' --urgency low 
            shutdown +1
        fi
        ;;

    5.Reboot)
        notify-send 'Rebooting' --urgency low
        reboot
        ;;

    6.Exit\ i3)
        ans=$(echo -e 'No\nYes' | rofi -dmenu -p 'Are you sure' -i)
        if [ $ans = 'Yes' ]
        then
            notify-send 'Exiting i3' --urgency low
            i3-msg exit 
        fi
        ;;
esac
