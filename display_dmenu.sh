#!/bin/bash

choice=$(echo -e 'HDMI\nLaptop\nHDMI Laptop\nLaptop HDMI' | rofi -dmenu -i -p 'How would you like to set up your displays?')

case $choice in
    Laptop)
        ~/.screenlayout/screenlayout1.sh
        ~/scripts/polybar_start.sh
        notify-send 'Laptop' --urgency low
        ;;

    HDMI)
        ~/.screenlayout/screenlayout2.sh
        ~/scripts/polybar_start.sh
        notify-send 'HDMI' --urgency low
        ;;

    HDMI\ Laptop)
        ~/.screenlayout/screenlayout3.sh
        ~/scripts/polybar_start.sh
        notify-send 'HDMI Laptop' --urgency low
        ;;

    Laptop\ HDMI)
        ~/.screenlayout/screenlayout4.sh
        ~/scripts/polybar_start.sh
        notify-send 'Laptop HDMI' --urgency low
        ;;

esac
