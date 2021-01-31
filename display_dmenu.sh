#!/bin/bash

choice=$(echo -e 'HDMI\nLaptop\nHDMI Laptop\nLaptop HDMI' | rofi -dmenu -i -p 'How would you like to set up your displays?')

case $choice in
    Laptop)
        notify-send 'Laptop' --urgency low
        ~/.screenlayout/screenlayout1.sh
        ;;

    HDMI)
        notify-send 'HDMI' --urgency low
        ~/.screenlayout/screenlayout2.sh
        ;;

    HDMI\ Laptop)
        notify-send 'HDMI Laptop' --urgency low
        ~/.screenlayout/screenlayout3.sh
        ;;

    Laptop\ HDMI)
        notify-send 'Laptop HDMI' --urgency low
        ~/.screenlayout/screenlayout4.sh
        ;;

esac
