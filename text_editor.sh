#!/bin/bash

choice=$(echo -e 'Python\nScripts\nHome' | rofi -dmenu -i -p 'Where would you
like to open your text editor?')

case $choice in
    Python)
        xterm -e 'vim ~/Python'
        ;;

    Scripts)
        xterm -e 'vim ~/scripts'
        ;;

    Home)
        xterm -e 'vim /home/jack/'
        ;;

esac
