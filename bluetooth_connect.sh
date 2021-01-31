#!/bin/bash

choice1=$(echo -e 'Earphones\nSpeaker\nHeadphones' | rofi -dmenu -i -p 'Choose:')
case $choice1 in
    Headphones)
        choice2=$(echo -e 'Connect\nDisconnect' | rofi -dmenu -i -p 'Choose:')

        case $choice2 in
            Connect)
                echo 'connect 78:A7:EB:67:8C:03' | bluetoothctl
                notify-send Connecting
                urxvt -e "bluetoothctl"
                ;;
            Disconnect)
                echo 'disconnect 78:A7:EB:67:8C:03' | bluetoothctl
                notify-send Disconnecting
                ;;
        esac
        ;;
    Speaker)
        choice3=$(echo -e 'Connect\nDisconnect' | rofi -dmenu -i -p 'Choose:')

        case $choice3 in
            Connect)
                echo 'connect 00:58:76:09:24:E5' | bluetoothctl
                notify-send Connecting
                urxvt -e "bluetoothctl"
                ;;
            Disconnect)
                echo 'disconnect 00:58:76:09:24:E5' | bluetoothctl
                notify-send Disconnecting
                ;;
        esac
        ;;

    Earphones)
        choice3=$(echo -e 'Connect\nDisconnect' | rofi -dmenu -i -p 'Choose:')

        case $choice3 in
            Connect)
                echo 'connect 74:5C:4B:12:21:A6' | bluetoothctl
                notify-send Connecting
                urxvt -e "bluetoothctl"
                ;;
            Disconnect)
                echo 'disconnect 74:5C:4B:12:21:A6' | bluetoothctl
                notify-send Disconnecting
                ;;
        esac
        ;;
esac
