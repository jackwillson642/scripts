#!/bin/bash

#   The depenedencies for using this script are:
#   -i3lock-color
#   -betterscreenlock

choice=$(echo -e '1.Lock\n2.Suspend\n3.Exit i3\n4.Shutdown\n5.Reboot' | rofi -dmenu -p 'Which action do you wish to perform?' -i)
case $choice in
    1.Lock)
        notify-send 'Locking ' --urgency low
        i3lock -e -B 10.0 -k --timesize=40 --timecolor=77ff99 --timestr="%H:%M:%S" --datesize=15 --datecolor=77ff99 --datestr="%a %d/%m/%y" --pass-volume-keys --pass-screen-keys --timepos=200:1000 --wrongtext=Access Denied --radius 20 --ring-width 8.0 --line-uses-inside --insidevercolor=77ff99 --insidecolor=00000000 --insidewrongcolor=ff0000 --ringvercolor=77ff99 --ringcolor=77ff99 --ringwrongcolor=ff0000 --keyhlcolor=00000000 --bshlcolor=00000000 --separatorcolor=77ff99 --indpos=340:988 --veriftext="" --wrongtext="" --noinputtext="" --no-modkeytext --greetersize=20 --greetertext="Locked!" --greeter-font=helvetica --greeterpos=200:950 --greetercolor=77ff99
        # i3lock -e -B 10.0 -k --timesize=40 --timecolor=77ff99 --timestr="%H:%M:%S" --datesize=15 --datecolor=77ff99 --datestr="%a %d/%m/%y" --pass-volume-keys --pass-screen-keys --timepos=1700:1000 --wrongtext=Access Denied --radius 20 --ring-width 8.0 --line-uses-inside --insidevercolor=77ff99 --insidecolor=00000000 --insidewrongcolor=ff0000 --ringvercolor=77ff99 --ringcolor=77ff99 --ringwrongcolor=ff0000 --keyhlcolor=00000000 --bshlcolor=00000000 --separatorcolor=77ff99 --indpos=1560:988 --veriftext="" --wrongtext="" --noinputtext="" --no-modkeytext --greetersize=50 --greetertext="" --greeter-font=helvetica --greetercolor=77ff99
        ;;

    2.Suspend)
        notify-send 'Suspending' --urgency low
        systemctl suspend
        ;;

    3.Exit\ i3)
        ans=$(echo -e 'No\nYes' | rofi -dmenu -p 'Are you sure' -i)
        if [ $ans = 'Yes' ]
        then
            notify-send 'Exiting i3' --urgency low
            i3-msg exit 
       fi
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
        ans=$(echo -e 'No\nYes' | rofi -dmenu -p 'Are you sure' -i)
        if [ $ans = 'Yes' ]
        then
          notify-send 'Rebooting' --urgency low
          reboot
        fi
        ;;
esac
